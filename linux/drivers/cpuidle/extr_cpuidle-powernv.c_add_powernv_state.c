
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_4__ {unsigned int flags; unsigned int target_residency; unsigned int exit_latency; int (* enter ) (struct cpuidle_device*,struct cpuidle_driver*,int) ;int desc; int name; } ;
struct TYPE_3__ {void* mask; void* val; } ;


 int CPUIDLE_NAME_LEN ;
 TYPE_2__* powernv_states ;
 TYPE_1__* stop_psscr_table ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static inline void add_powernv_state(int index, const char *name,
         unsigned int flags,
         int (*idle_fn)(struct cpuidle_device *,
          struct cpuidle_driver *,
          int),
         unsigned int target_residency,
         unsigned int exit_latency,
         u64 psscr_val, u64 psscr_mask)
{
 strlcpy(powernv_states[index].name, name, CPUIDLE_NAME_LEN);
 strlcpy(powernv_states[index].desc, name, CPUIDLE_NAME_LEN);
 powernv_states[index].flags = flags;
 powernv_states[index].target_residency = target_residency;
 powernv_states[index].exit_latency = exit_latency;
 powernv_states[index].enter = idle_fn;

 stop_psscr_table[index].val = psscr_val;
 stop_psscr_table[index].mask = psscr_mask;
}
