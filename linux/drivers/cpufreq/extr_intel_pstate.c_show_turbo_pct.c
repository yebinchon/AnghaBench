
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct TYPE_2__ {int turbo_pstate; int min_pstate; int max_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;
typedef int ssize_t ;


 int EAGAIN ;
 struct cpudata** all_cpu_data ;
 int div_fp (int,int) ;
 int fp_toint (int ) ;
 int int_tofp (int) ;
 int intel_pstate_driver ;
 int intel_pstate_driver_lock ;
 int mul_fp (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_turbo_pct(struct kobject *kobj,
    struct kobj_attribute *attr, char *buf)
{
 struct cpudata *cpu;
 int total, no_turbo, turbo_pct;
 uint32_t turbo_fp;

 mutex_lock(&intel_pstate_driver_lock);

 if (!intel_pstate_driver) {
  mutex_unlock(&intel_pstate_driver_lock);
  return -EAGAIN;
 }

 cpu = all_cpu_data[0];

 total = cpu->pstate.turbo_pstate - cpu->pstate.min_pstate + 1;
 no_turbo = cpu->pstate.max_pstate - cpu->pstate.min_pstate + 1;
 turbo_fp = div_fp(no_turbo, total);
 turbo_pct = 100 - fp_toint(mul_fp(turbo_fp, int_tofp(100)));

 mutex_unlock(&intel_pstate_driver_lock);

 return sprintf(buf, "%u\n", turbo_pct);
}
