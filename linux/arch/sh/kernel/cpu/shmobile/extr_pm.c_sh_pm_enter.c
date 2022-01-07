
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int ENXIO ;
 int SUSP_MODE_STANDBY_SF ;
 int clear_bl_bit () ;
 int local_irq_disable () ;
 int set_bl_bit () ;
 int sh_mobile_call_standby (int) ;
 int sh_mobile_sleep_supported ;

__attribute__((used)) static int sh_pm_enter(suspend_state_t state)
{
 if (!(sh_mobile_sleep_supported & SUSP_MODE_STANDBY_SF))
  return -ENXIO;

 local_irq_disable();
 set_bl_bit();
 sh_mobile_call_standby(SUSP_MODE_STANDBY_SF);
 local_irq_disable();
 clear_bl_bit();
 return 0;
}
