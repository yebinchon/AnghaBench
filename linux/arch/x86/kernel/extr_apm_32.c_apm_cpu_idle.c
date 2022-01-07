
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ forbid_idle; } ;


 unsigned int IDLE_CALC_LIMIT ;
 unsigned int IDLE_LEAKY_MAX ;
 int apm_do_busy () ;
 int apm_do_idle () ;
 TYPE_1__ apm_info ;
 int current ;
 int default_idle () ;
 unsigned int idle_period ;
 unsigned int idle_threshold ;
 unsigned int jiffies ;
 int local_irq_disable () ;
 int need_resched () ;
 unsigned int nsecs_to_jiffies (scalar_t__) ;
 int task_cputime (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int apm_cpu_idle(struct cpuidle_device *dev,
 struct cpuidle_driver *drv, int index)
{
 static int use_apm_idle;
 static unsigned int last_jiffies;
 static u64 last_stime;
 u64 stime, utime;

 int apm_idle_done = 0;
 unsigned int jiffies_since_last_check = jiffies - last_jiffies;
 unsigned int bucket;

recalc:
 task_cputime(current, &utime, &stime);
 if (jiffies_since_last_check > IDLE_CALC_LIMIT) {
  use_apm_idle = 0;
 } else if (jiffies_since_last_check > idle_period) {
  unsigned int idle_percentage;

  idle_percentage = nsecs_to_jiffies(stime - last_stime);
  idle_percentage *= 100;
  idle_percentage /= jiffies_since_last_check;
  use_apm_idle = (idle_percentage > idle_threshold);
  if (apm_info.forbid_idle)
   use_apm_idle = 0;
 }

 last_jiffies = jiffies;
 last_stime = stime;

 bucket = IDLE_LEAKY_MAX;

 while (!need_resched()) {
  if (use_apm_idle) {
   unsigned int t;

   t = jiffies;
   switch (apm_do_idle()) {
   case 0:
    apm_idle_done = 1;
    if (t != jiffies) {
     if (bucket) {
      bucket = IDLE_LEAKY_MAX;
      continue;
     }
    } else if (bucket) {
     bucket--;
     continue;
    }
    break;
   case 1:
    apm_idle_done = 1;
    break;
   default:
    break;
   }
  }
  default_idle();
  local_irq_disable();
  jiffies_since_last_check = jiffies - last_jiffies;
  if (jiffies_since_last_check > idle_period)
   goto recalc;
 }

 if (apm_idle_done)
  apm_do_busy();

 return index;
}
