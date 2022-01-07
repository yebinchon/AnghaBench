
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int turbo_disabled; int no_turbo; } ;


 int EAGAIN ;
 TYPE_1__ global ;
 int intel_pstate_driver ;
 int intel_pstate_driver_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int update_turbo_state () ;

__attribute__((used)) static ssize_t show_no_turbo(struct kobject *kobj,
        struct kobj_attribute *attr, char *buf)
{
 ssize_t ret;

 mutex_lock(&intel_pstate_driver_lock);

 if (!intel_pstate_driver) {
  mutex_unlock(&intel_pstate_driver_lock);
  return -EAGAIN;
 }

 update_turbo_state();
 if (global.turbo_disabled)
  ret = sprintf(buf, "%u\n", global.turbo_disabled);
 else
  ret = sprintf(buf, "%u\n", global.no_turbo);

 mutex_unlock(&intel_pstate_driver_lock);

 return ret;
}
