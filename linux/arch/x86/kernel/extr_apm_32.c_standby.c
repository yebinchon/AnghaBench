
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APM_NO_ERROR ;
 int APM_STATE_STANDBY ;
 int APM_SUCCESS ;
 int PMSG_RESUME ;
 int PMSG_SUSPEND ;
 int apm_error (char*,int) ;
 int dpm_resume_start (int ) ;
 int dpm_suspend_end (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int set_system_power_state (int ) ;
 int syscore_resume () ;
 int syscore_suspend () ;

__attribute__((used)) static void standby(void)
{
 int err;

 dpm_suspend_end(PMSG_SUSPEND);

 local_irq_disable();
 syscore_suspend();
 local_irq_enable();

 err = set_system_power_state(APM_STATE_STANDBY);
 if ((err != APM_SUCCESS) && (err != APM_NO_ERROR))
  apm_error("standby", err);

 local_irq_disable();
 syscore_resume();
 local_irq_enable();

 dpm_resume_start(PMSG_RESUME);
}
