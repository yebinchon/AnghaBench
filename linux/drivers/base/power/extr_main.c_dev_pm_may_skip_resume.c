
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int must_resume; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_4__ {scalar_t__ event; } ;


 scalar_t__ PM_EVENT_RESTORE ;
 TYPE_2__ pm_transition ;

bool dev_pm_may_skip_resume(struct device *dev)
{
 return !dev->power.must_resume && pm_transition.event != PM_EVENT_RESTORE;
}
