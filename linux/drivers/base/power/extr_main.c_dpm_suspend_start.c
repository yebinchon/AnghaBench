
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pm_message_t ;
typedef int ktime_t ;
struct TYPE_2__ {int failed_prepare; } ;


 int SUSPEND_PREPARE ;
 int dpm_prepare (int ) ;
 int dpm_save_failed_step (int ) ;
 int dpm_show_time (int ,int ,int,char*) ;
 int dpm_suspend (int ) ;
 int ktime_get () ;
 TYPE_1__ suspend_stats ;

int dpm_suspend_start(pm_message_t state)
{
 ktime_t starttime = ktime_get();
 int error;

 error = dpm_prepare(state);
 if (error) {
  suspend_stats.failed_prepare++;
  dpm_save_failed_step(SUSPEND_PREPARE);
 } else
  error = dpm_suspend(state);
 dpm_show_time(starttime, state, error, "start");
 return error;
}
