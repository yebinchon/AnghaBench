
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int cpuidle_resume () ;
 int device_wakeup_disarm_wake_irqs () ;
 int dpm_noirq_resume_devices (int ) ;
 int resume_device_irqs () ;

void dpm_resume_noirq(pm_message_t state)
{
 dpm_noirq_resume_devices(state);

 resume_device_irqs();
 device_wakeup_disarm_wake_irqs();

 cpuidle_resume();
}
