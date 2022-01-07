
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int dummy; } ;
struct device {int id; int kobj; } ;


 int cpu_online (int) ;
 int mc_attr_group ;
 int microcode_fini_cpu (int) ;
 int pr_debug (char*,int) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void mc_device_remove(struct device *dev, struct subsys_interface *sif)
{
 int cpu = dev->id;

 if (!cpu_online(cpu))
  return;

 pr_debug("CPU%d removed\n", cpu);
 microcode_fini_cpu(cpu);
 sysfs_remove_group(&dev->kobj, &mc_attr_group);
}
