
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int hwp_cap_cached; } ;
struct TYPE_3__ {scalar_t__ no_turbo; } ;


 int HWP_GUARANTEED_PERF (int ) ;
 int HWP_HIGHEST_PERF (int ) ;
 int MSR_HWP_CAPABILITIES ;
 int WRITE_ONCE (int ,int ) ;
 TYPE_2__** all_cpu_data ;
 TYPE_1__ global ;
 int rdmsrl_on_cpu (unsigned int,int ,int *) ;

__attribute__((used)) static void intel_pstate_get_hwp_max(unsigned int cpu, int *phy_max,
         int *current_max)
{
 u64 cap;

 rdmsrl_on_cpu(cpu, MSR_HWP_CAPABILITIES, &cap);
 WRITE_ONCE(all_cpu_data[cpu]->hwp_cap_cached, cap);
 if (global.no_turbo)
  *current_max = HWP_GUARANTEED_PERF(cap);
 else
  *current_max = HWP_HIGHEST_PERF(cap);

 *phy_max = HWP_HIGHEST_PERF(cap);
}
