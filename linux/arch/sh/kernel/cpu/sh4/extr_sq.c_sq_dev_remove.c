
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int dummy; } ;
struct kobject {int dummy; } ;
struct device {unsigned int id; } ;


 int kobject_put (struct kobject*) ;
 struct kobject** sq_kobject ;

__attribute__((used)) static void sq_dev_remove(struct device *dev, struct subsys_interface *sif)
{
 unsigned int cpu = dev->id;
 struct kobject *kobj = sq_kobject[cpu];

 kobject_put(kobj);
}
