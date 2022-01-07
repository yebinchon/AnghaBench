
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int __driver_deferred_probe_check_state (struct device*) ;

int driver_deferred_probe_check_state_continue(struct device *dev)
{
 int ret;

 ret = __driver_deferred_probe_check_state(dev);
 if (ret < 0)
  return ret;

 return -EPROBE_DEFER;
}
