
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int may_skip_resume; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_10__ {scalar_t__ event; } ;
typedef TYPE_2__ pm_message_t ;


 scalar_t__ PM_EVENT_RESUME ;
 scalar_t__ device_can_wakeup (struct device*) ;
 int device_may_wakeup (struct device*) ;
 int dpm_subsys_resume_early_cb (struct device*,TYPE_2__,int *) ;
 int dpm_subsys_resume_noirq_cb (struct device*,TYPE_2__,int *) ;
 int dpm_subsys_suspend_late_cb (struct device*,TYPE_2__,int *) ;
 int pm_runtime_status_suspended (struct device*) ;
 TYPE_2__ resume_event (TYPE_2__) ;

__attribute__((used)) static bool device_must_resume(struct device *dev, pm_message_t state,
          bool no_subsys_suspend_noirq)
{
 pm_message_t resume_msg = resume_event(state);







 if (no_subsys_suspend_noirq &&
     !dpm_subsys_suspend_late_cb(dev, state, ((void*)0)) &&
     !dpm_subsys_resume_early_cb(dev, resume_msg, ((void*)0)) &&
     !dpm_subsys_resume_noirq_cb(dev, resume_msg, ((void*)0)))
  return !pm_runtime_status_suspended(dev) &&
   (resume_msg.event != PM_EVENT_RESUME ||
    (device_can_wakeup(dev) && !device_may_wakeup(dev)));





 return !dev->power.may_skip_resume;
}
