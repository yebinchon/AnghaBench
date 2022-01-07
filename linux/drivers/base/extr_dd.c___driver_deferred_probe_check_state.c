
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int ETIMEDOUT ;
 int deferred_probe_timeout ;
 int dev_WARN (struct device*,char*) ;
 int initcalls_done ;

__attribute__((used)) static int __driver_deferred_probe_check_state(struct device *dev)
{
 if (!initcalls_done)
  return -EPROBE_DEFER;

 if (!deferred_probe_timeout) {
  dev_WARN(dev, "deferred probe timeout, ignoring dependency");
  return -ETIMEDOUT;
 }

 return 0;
}
