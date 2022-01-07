
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BOOT_INFO_ADDR ;
 int ENODEV ;
 int mvebu_pm_store_armadaxp_bootinfo (int *) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int * phys_to_virt (int ) ;

__attribute__((used)) static int mvebu_pm_store_bootinfo(void)
{
 u32 *store_addr;

 store_addr = phys_to_virt(BOOT_INFO_ADDR);

 if (of_machine_is_compatible("marvell,armadaxp"))
  mvebu_pm_store_armadaxp_bootinfo(store_addr);
 else
  return -ENODEV;

 return 0;
}
