setenv bootargs root=/dev/mmcblk0p2
load mmc 0:1 $kernel_addr_r Image
load mmc 0:1 $fdt_addr_r device_tree.dtb
load mmc 0:1 $fdtoverlay_addr_r expansion-board-overlay.dtbo
fdt addr $fdt_addr_r
fdt resize 8192
fdt apply $fdtoverlay_addr_r
booti $kernel_addr_r - $fdt_addr_r
