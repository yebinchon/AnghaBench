
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_smp_call_data {void* gpstate_id; void* pstate_id; } ;
struct global_pstate_info {unsigned int last_sampled_time; unsigned int highest_lpstate_idx; unsigned int last_gpstate_idx; unsigned int elapsed_time; unsigned int last_lpstate_idx; int gpstate_lock; int timer; } ;
struct cpufreq_policy {int cpus; struct global_pstate_info* driver_data; } ;


 scalar_t__ MAX_RAMP_DOWN_TIME ;
 unsigned int calc_global_pstate (scalar_t__,unsigned int,unsigned int) ;
 int del_timer_sync (int *) ;
 int get_jiffies_64 () ;
 unsigned int get_nominal_index () ;
 void* idx_to_pstate (unsigned int) ;
 unsigned int jiffies_to_msecs (int ) ;
 int powernv_cpufreq_throttle_check (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int queue_gpstate_timer (struct global_pstate_info*) ;
 int rebooting ;
 int reset_gpstates (struct cpufreq_policy*) ;
 int set_pstate ;
 int smp_call_function_any (int ,int ,struct powernv_smp_call_data*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int throttled ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int powernv_cpufreq_target_index(struct cpufreq_policy *policy,
     unsigned int new_index)
{
 struct powernv_smp_call_data freq_data;
 unsigned int cur_msec, gpstate_idx;
 struct global_pstate_info *gpstates = policy->driver_data;

 if (unlikely(rebooting) && new_index != get_nominal_index())
  return 0;

 if (!throttled) {



  preempt_disable();
  powernv_cpufreq_throttle_check(((void*)0));
  preempt_enable();
 }

 cur_msec = jiffies_to_msecs(get_jiffies_64());

 freq_data.pstate_id = idx_to_pstate(new_index);
 if (!gpstates) {
  freq_data.gpstate_id = freq_data.pstate_id;
  goto no_gpstate;
 }

 spin_lock(&gpstates->gpstate_lock);

 if (!gpstates->last_sampled_time) {
  gpstate_idx = new_index;
  gpstates->highest_lpstate_idx = new_index;
  goto gpstates_done;
 }

 if (gpstates->last_gpstate_idx < new_index) {
  gpstates->elapsed_time += cur_msec -
       gpstates->last_sampled_time;






  if (gpstates->elapsed_time > MAX_RAMP_DOWN_TIME) {
   reset_gpstates(policy);
   gpstates->highest_lpstate_idx = new_index;
   gpstate_idx = new_index;
  } else {

   gpstate_idx = calc_global_pstate(gpstates->elapsed_time,
        gpstates->highest_lpstate_idx,
        new_index);
  }
 } else {
  reset_gpstates(policy);
  gpstates->highest_lpstate_idx = new_index;
  gpstate_idx = new_index;
 }





 if (gpstate_idx != new_index)
  queue_gpstate_timer(gpstates);
 else
  del_timer_sync(&gpstates->timer);

gpstates_done:
 freq_data.gpstate_id = idx_to_pstate(gpstate_idx);
 gpstates->last_sampled_time = cur_msec;
 gpstates->last_gpstate_idx = gpstate_idx;
 gpstates->last_lpstate_idx = new_index;

 spin_unlock(&gpstates->gpstate_lock);

no_gpstate:





 smp_call_function_any(policy->cpus, set_pstate, &freq_data, 1);
 return 0;
}
