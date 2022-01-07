
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int cpuidle_pause () ;
 int device_wakeup_arm_wake_irqs () ;
 int dpm_noirq_suspend_devices (int ) ;
 int dpm_resume_noirq (int ) ;
 int resume_event (int ) ;
 int suspend_device_irqs () ;

int dpm_suspend_noirq(pm_message_t state)
{
 int ret;

 cpuidle_pause();

 device_wakeup_arm_wake_irqs();
 suspend_device_irqs();

 ret = dpm_noirq_suspend_devices(state);
 if (ret)
  dpm_resume_noirq(resume_event(state));

 return ret;
}
