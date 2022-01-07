
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ve_spc_opp {scalar_t__ freq; } ;
struct TYPE_2__ {scalar_t__ baseaddr; scalar_t__* num_opps; struct ve_spc_opp** opps; } ;


 int EINVAL ;
 scalar_t__ PERF_LVL_A15 ;
 scalar_t__ PERF_LVL_A7 ;
 scalar_t__ cluster_is_a15 (int) ;
 TYPE_1__* info ;
 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static int ve_spc_get_performance(int cluster, u32 *freq)
{
 struct ve_spc_opp *opps = info->opps[cluster];
 u32 perf_cfg_reg = 0;
 u32 perf;

 perf_cfg_reg = cluster_is_a15(cluster) ? PERF_LVL_A15 : PERF_LVL_A7;

 perf = readl_relaxed(info->baseaddr + perf_cfg_reg);
 if (perf >= info->num_opps[cluster])
  return -EINVAL;

 opps += perf;
 *freq = opps->freq;

 return 0;
}
