
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;
typedef int ktime_t ;


 int dpm_resume_early (int ) ;
 int dpm_show_time (int ,int ,int,char*) ;
 int dpm_suspend_late (int ) ;
 int dpm_suspend_noirq (int ) ;
 int ktime_get () ;
 int resume_event (int ) ;

int dpm_suspend_end(pm_message_t state)
{
 ktime_t starttime = ktime_get();
 int error;

 error = dpm_suspend_late(state);
 if (error)
  goto out;

 error = dpm_suspend_noirq(state);
 if (error)
  dpm_resume_early(resume_event(state));

out:
 dpm_show_time(starttime, state, error, "end");
 return error;
}
