
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_app_boot_info {scalar_t__ labi_signature; int InitTLBStart_addr; } ;


 int LABI_ADDR_IN_BOOTLOADER ;
 scalar_t__ LABI_SIGNATURE ;
 scalar_t__ PHYS_TO_XKSEG_CACHED (int ) ;
 int octeon_bootloader_entry_addr ;
 int pr_info (char*) ;
 int setup_max_cpus ;

__attribute__((used)) static void octeon_smp_hotplug_setup(void)
{
}
