
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_KNC_IA32_PERF_GLOBAL_OVF_CONTROL ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static inline void knc_pmu_ack_status(u64 ack)
{
 wrmsrl(MSR_KNC_IA32_PERF_GLOBAL_OVF_CONTROL, ack);
}
