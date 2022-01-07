
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ parent; } ;
typedef int ktime_t ;


 int current ;
 int dev_info (struct device*,char*,void*,int ,char*) ;
 char* dev_name (scalar_t__) ;
 int ktime_get () ;
 int pm_print_times_enabled ;
 int task_pid_nr (int ) ;

__attribute__((used)) static ktime_t initcall_debug_start(struct device *dev, void *cb)
{
 if (!pm_print_times_enabled)
  return 0;

 dev_info(dev, "calling %pS @ %i, parent: %s\n", cb,
   task_pid_nr(current),
   dev->parent ? dev_name(dev->parent) : "none");
 return ktime_get();
}
