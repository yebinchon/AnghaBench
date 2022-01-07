
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int supported_cpuidle_states ;

u32 pnv_get_supported_cpuidle_states(void)
{
 return supported_cpuidle_states;
}
