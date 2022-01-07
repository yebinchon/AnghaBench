
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_state_vals { ____Placeholder_cpu_state_vals } cpu_state_vals ;


 int CPU_STATE_ONLINE ;

__attribute__((used)) static inline enum cpu_state_vals get_cpu_current_state(int cpu)
{
 return CPU_STATE_ONLINE;
}
