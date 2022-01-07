
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int exit; int vmlinux_alloc; int fixups; } ;


 int SPRN_PIR ;
 int _dtb_start ;
 scalar_t__ _end ;
 int fdt_init (int ) ;
 int fdt_set_boot_cpuid_phys (int ,int ) ;
 int ibm44x_dbcr_reset ;
 int iss_4xx_fixups ;
 int iss_4xx_vmlinux_alloc ;
 int mfspr (int ) ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;
 int simple_alloc_init (scalar_t__,unsigned long,int,int) ;

void platform_init(void)
{
 unsigned long end_of_ram = 0x08000000;
 unsigned long avail_ram = end_of_ram - (unsigned long)_end;
 u32 pir_reg;

 simple_alloc_init(_end, avail_ram, 128, 64);
 platform_ops.fixups = iss_4xx_fixups;
 platform_ops.vmlinux_alloc = iss_4xx_vmlinux_alloc;
 platform_ops.exit = ibm44x_dbcr_reset;
 pir_reg = mfspr(SPRN_PIR);
 fdt_set_boot_cpuid_phys(_dtb_start, pir_reg);
 fdt_init(_dtb_start);
 serial_console_init();
}
