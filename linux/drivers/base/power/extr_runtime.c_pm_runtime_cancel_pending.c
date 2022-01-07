
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int request; } ;
struct device {TYPE_1__ power; } ;


 int RPM_REQ_NONE ;
 int pm_runtime_deactivate_timer (struct device*) ;

__attribute__((used)) static void pm_runtime_cancel_pending(struct device *dev)
{
 pm_runtime_deactivate_timer(dev);




 dev->power.request = RPM_REQ_NONE;
}
