
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __pm_runtime_disable (struct device*,int) ;
 int pm_runtime_reinit (struct device*) ;

void pm_runtime_remove(struct device *dev)
{
 __pm_runtime_disable(dev, 0);
 pm_runtime_reinit(dev);
}
