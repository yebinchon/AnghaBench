
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct powernv_smp_call_data {scalar_t__ gpstate_id; scalar_t__ pstate_id; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct global_pstate_info {unsigned int last_sampled_time; scalar_t__ elapsed_time; int highest_lpstate_idx; int last_gpstate_idx; int last_lpstate_idx; int gpstate_lock; TYPE_1__ timer; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int cpus; } ;


 scalar_t__ MAX_RAMP_DOWN_TIME ;
 int SPRN_PMCR ;
 int add_timer_on (TYPE_1__*,int ) ;
 int calc_global_pstate (scalar_t__,int,int) ;
 int cpumask_first (int ) ;
 int cpumask_test_cpu (int ,int ) ;
 scalar_t__ extract_global_pstate (unsigned long) ;
 scalar_t__ extract_local_pstate (unsigned long) ;
 struct global_pstate_info* from_timer (int ,struct timer_list*,int ) ;
 unsigned long get_pmspr (int ) ;
 struct global_pstate_info* gpstates ;
 scalar_t__ idx_to_pstate (int) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int pstate_to_idx (scalar_t__) ;
 int queue_gpstate_timer (struct global_pstate_info*) ;
 int raw_smp_processor_id () ;
 int reset_gpstates (struct cpufreq_policy*) ;
 int set_pstate (struct powernv_smp_call_data*) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int timer ;

void gpstate_timer_handler(struct timer_list *t)
{
 struct global_pstate_info *gpstates = from_timer(gpstates, t, timer);
 struct cpufreq_policy *policy = gpstates->policy;
 int gpstate_idx, lpstate_idx;
 unsigned long val;
 unsigned int time_diff = jiffies_to_msecs(jiffies)
     - gpstates->last_sampled_time;
 struct powernv_smp_call_data freq_data;

 if (!spin_trylock(&gpstates->gpstate_lock))
  return;




 if (!cpumask_test_cpu(raw_smp_processor_id(), policy->cpus)) {
  gpstates->timer.expires = jiffies + msecs_to_jiffies(1);
  add_timer_on(&gpstates->timer, cpumask_first(policy->cpus));
  spin_unlock(&gpstates->gpstate_lock);
  return;
 }






 val = get_pmspr(SPRN_PMCR);
 freq_data.gpstate_id = extract_global_pstate(val);
 freq_data.pstate_id = extract_local_pstate(val);
 if (freq_data.gpstate_id == freq_data.pstate_id) {
  reset_gpstates(policy);
  spin_unlock(&gpstates->gpstate_lock);
  return;
 }

 gpstates->last_sampled_time += time_diff;
 gpstates->elapsed_time += time_diff;

 if (gpstates->elapsed_time > MAX_RAMP_DOWN_TIME) {
  gpstate_idx = pstate_to_idx(freq_data.pstate_id);
  lpstate_idx = gpstate_idx;
  reset_gpstates(policy);
  gpstates->highest_lpstate_idx = gpstate_idx;
 } else {
  lpstate_idx = pstate_to_idx(freq_data.pstate_id);
  gpstate_idx = calc_global_pstate(gpstates->elapsed_time,
       gpstates->highest_lpstate_idx,
       lpstate_idx);
 }
 freq_data.gpstate_id = idx_to_pstate(gpstate_idx);
 gpstates->last_gpstate_idx = gpstate_idx;
 gpstates->last_lpstate_idx = lpstate_idx;




 if (gpstate_idx != gpstates->last_lpstate_idx)
  queue_gpstate_timer(gpstates);

 set_pstate(&freq_data);
 spin_unlock(&gpstates->gpstate_lock);
}
