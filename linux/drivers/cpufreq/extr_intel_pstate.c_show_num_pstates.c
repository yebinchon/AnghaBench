
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct TYPE_2__ {int turbo_pstate; int min_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;
typedef int ssize_t ;


 int EAGAIN ;
 struct cpudata** all_cpu_data ;
 int intel_pstate_driver ;
 int intel_pstate_driver_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_num_pstates(struct kobject *kobj,
    struct kobj_attribute *attr, char *buf)
{
 struct cpudata *cpu;
 int total;

 mutex_lock(&intel_pstate_driver_lock);

 if (!intel_pstate_driver) {
  mutex_unlock(&intel_pstate_driver_lock);
  return -EAGAIN;
 }

 cpu = all_cpu_data[0];
 total = cpu->pstate.turbo_pstate - cpu->pstate.min_pstate + 1;

 mutex_unlock(&intel_pstate_driver_lock);

 return sprintf(buf, "%u\n", total);
}
