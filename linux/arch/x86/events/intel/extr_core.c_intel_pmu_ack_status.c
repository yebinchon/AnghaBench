
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_CORE_PERF_GLOBAL_OVF_CTRL ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static inline void intel_pmu_ack_status(u64 ack)
{
 wrmsrl(MSR_CORE_PERF_GLOBAL_OVF_CTRL, ack);
}
