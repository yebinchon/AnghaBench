
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct of_device_id {int data; } ;
struct device_node {char* name; } ;
struct cpuidle_state {int desc; int name; int flags; scalar_t__ target_residency; scalar_t__ exit_latency; int enter_s2idle; int enter; } ;


 scalar_t__ CPUIDLE_DESC_LEN ;
 int CPUIDLE_FLAG_TIMER_STOP ;
 scalar_t__ CPUIDLE_NAME_LEN ;
 int EINVAL ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int pr_debug (char*,struct device_node*) ;
 int strncpy (int ,char const*,scalar_t__) ;

__attribute__((used)) static int init_state_node(struct cpuidle_state *idle_state,
      const struct of_device_id *match_id,
      struct device_node *state_node)
{
 int err;
 const char *desc;






 idle_state->enter = match_id->data;





 idle_state->enter_s2idle = match_id->data;

 err = of_property_read_u32(state_node, "wakeup-latency-us",
       &idle_state->exit_latency);
 if (err) {
  u32 entry_latency, exit_latency;

  err = of_property_read_u32(state_node, "entry-latency-us",
        &entry_latency);
  if (err) {
   pr_debug(" * %pOF missing entry-latency-us property\n",
     state_node);
   return -EINVAL;
  }

  err = of_property_read_u32(state_node, "exit-latency-us",
        &exit_latency);
  if (err) {
   pr_debug(" * %pOF missing exit-latency-us property\n",
     state_node);
   return -EINVAL;
  }




  idle_state->exit_latency = entry_latency + exit_latency;
 }

 err = of_property_read_u32(state_node, "min-residency-us",
       &idle_state->target_residency);
 if (err) {
  pr_debug(" * %pOF missing min-residency-us property\n",
        state_node);
  return -EINVAL;
 }

 err = of_property_read_string(state_node, "idle-state-name", &desc);
 if (err)
  desc = state_node->name;

 idle_state->flags = 0;
 if (of_property_read_bool(state_node, "local-timer-stop"))
  idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;





 strncpy(idle_state->name, state_node->name, CPUIDLE_NAME_LEN - 1);
 strncpy(idle_state->desc, desc, CPUIDLE_DESC_LEN - 1);
 return 0;
}
