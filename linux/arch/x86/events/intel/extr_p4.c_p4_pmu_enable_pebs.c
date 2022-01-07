
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct p4_pebs_bind {scalar_t__ metric_vert; scalar_t__ metric_pebs; } ;


 int BUILD_BUG_ON (int) ;
 int MSR_IA32_PEBS_ENABLE ;
 int MSR_P4_PEBS_MATRIX_VERT ;
 scalar_t__ P4_PEBS_CONFIG_METRIC_MASK ;
 scalar_t__ P4_PEBS_METRIC__max ;
 unsigned int P4_PEBS_METRIC__none ;
 unsigned int p4_config_unpack_metric (int ) ;
 struct p4_pebs_bind* p4_pebs_bind_map ;
 int wrmsrl_safe (int ,int ) ;

__attribute__((used)) static void p4_pmu_enable_pebs(u64 config)
{
 struct p4_pebs_bind *bind;
 unsigned int idx;

 BUILD_BUG_ON(P4_PEBS_METRIC__max > P4_PEBS_CONFIG_METRIC_MASK);

 idx = p4_config_unpack_metric(config);
 if (idx == P4_PEBS_METRIC__none)
  return;

 bind = &p4_pebs_bind_map[idx];

 (void)wrmsrl_safe(MSR_IA32_PEBS_ENABLE, (u64)bind->metric_pebs);
 (void)wrmsrl_safe(MSR_P4_PEBS_MATRIX_VERT, (u64)bind->metric_vert);
}
