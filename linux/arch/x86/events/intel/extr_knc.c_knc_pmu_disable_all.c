
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int KNC_ENABLE_COUNTER0 ;
 int KNC_ENABLE_COUNTER1 ;
 int MSR_KNC_IA32_PERF_GLOBAL_CTRL ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void knc_pmu_disable_all(void)
{
 u64 val;

 rdmsrl(MSR_KNC_IA32_PERF_GLOBAL_CTRL, val);
 val &= ~(KNC_ENABLE_COUNTER0|KNC_ENABLE_COUNTER1);
 wrmsrl(MSR_KNC_IA32_PERF_GLOBAL_CTRL, val);
}
