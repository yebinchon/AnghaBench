
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_AMD64_TSC_RATIO ;
 int TSC_RATIO_DEFAULT ;
 int X86_FEATURE_TSCRATEMSR ;
 int amd_pmu_disable_virt () ;
 int cpu_svm_disable () ;
 scalar_t__ static_cpu_has (int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void svm_hardware_disable(void)
{

 if (static_cpu_has(X86_FEATURE_TSCRATEMSR))
  wrmsrl(MSR_AMD64_TSC_RATIO, TSC_RATIO_DEFAULT);

 cpu_svm_disable();

 amd_pmu_disable_virt();
}
