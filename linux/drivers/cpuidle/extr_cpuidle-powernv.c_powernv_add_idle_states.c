
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnv_idle_states_t {int flags; scalar_t__ latency_ns; scalar_t__ residency_ns; char* name; int psscr_mask; int psscr_val; int valid; } ;


 int CPUIDLE_FLAG_NONE ;
 int CPUIDLE_FLAG_TIMER_STOP ;
 int CPUIDLE_STATE_MAX ;
 unsigned int DIV_ROUND_UP (scalar_t__,int) ;
 int OPAL_PM_NAP_ENABLED ;
 int OPAL_PM_SLEEP_ENABLED ;
 int OPAL_PM_SLEEP_ENABLED_ER1 ;
 int OPAL_PM_STOP_INST_DEEP ;
 int OPAL_PM_STOP_INST_FAST ;
 int OPAL_PM_TIMEBASE_STOP ;
 scalar_t__ POWERNV_THRESHOLD_LATENCY_NS ;
 int add_powernv_state (int,char*,int ,int ,unsigned int,unsigned int,int ,int ) ;
 int fastsleep_loop ;
 int nap_loop ;
 int nr_pnv_idle_states ;
 int pnv_get_supported_cpuidle_states () ;
 struct pnv_idle_states_t* pnv_idle_states ;
 int pr_warn (char*) ;
 int stop_loop ;

__attribute__((used)) static int powernv_add_idle_states(void)
{
 int nr_idle_states = 1;
 int dt_idle_states;
 u32 has_stop_states = 0;
 int i;
 u32 supported_flags = pnv_get_supported_cpuidle_states();



 if (nr_pnv_idle_states <= 0) {
  pr_warn("cpuidle-powernv : Only Snooze is available\n");
  goto out;
 }


 dt_idle_states = nr_pnv_idle_states;





 if (nr_pnv_idle_states > CPUIDLE_STATE_MAX - 1) {
  pr_warn("cpuidle-powernv: discovered idle states more than allowed");
  dt_idle_states = CPUIDLE_STATE_MAX - 1;
 }





 has_stop_states = (pnv_idle_states[0].flags &
      (OPAL_PM_STOP_INST_FAST | OPAL_PM_STOP_INST_DEEP));

 for (i = 0; i < dt_idle_states; i++) {
  unsigned int exit_latency, target_residency;
  bool stops_timebase = 0;
  struct pnv_idle_states_t *state = &pnv_idle_states[i];





  if ((state->flags & supported_flags) != state->flags)
   continue;





  if (state->latency_ns > POWERNV_THRESHOLD_LATENCY_NS)
   continue;




  exit_latency = DIV_ROUND_UP(state->latency_ns, 1000);
  target_residency = DIV_ROUND_UP(state->residency_ns, 1000);

  if (has_stop_states && !(state->valid))
    continue;

  if (state->flags & OPAL_PM_TIMEBASE_STOP)
   stops_timebase = 1;

  if (state->flags & OPAL_PM_NAP_ENABLED) {

   add_powernv_state(nr_idle_states, "Nap",
       CPUIDLE_FLAG_NONE, nap_loop,
       target_residency, exit_latency, 0, 0);
  } else if (has_stop_states && !stops_timebase) {
   add_powernv_state(nr_idle_states, state->name,
       CPUIDLE_FLAG_NONE, stop_loop,
       target_residency, exit_latency,
       state->psscr_val,
       state->psscr_mask);
  }
  else
   continue;
  nr_idle_states++;
 }
out:
 return nr_idle_states;
}
