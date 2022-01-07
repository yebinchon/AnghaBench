
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 scalar_t__ CS5536_PM1_STS ;
 int EINVAL ;
 scalar_t__ PM_SUSPEND_MEM ;
 scalar_t__ acpi_base ;
 int do_olpc_suspend_lowlevel () ;
 unsigned long inl (scalar_t__) ;
 int outl (unsigned long,scalar_t__) ;

__attribute__((used)) static int xo1_power_state_enter(suspend_state_t pm_state)
{
 unsigned long saved_sci_mask;


 if (pm_state != PM_SUSPEND_MEM)
  return -EINVAL;





 saved_sci_mask = inl(acpi_base + CS5536_PM1_STS);
 saved_sci_mask &= 0xffff0000;


 do_olpc_suspend_lowlevel();




 outl(saved_sci_mask, acpi_base + CS5536_PM1_STS);

 return 0;
}
