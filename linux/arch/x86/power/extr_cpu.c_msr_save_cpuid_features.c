
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct x86_cpu_id {int family; } ;


 int ARRAY_SIZE (int *) ;
 int MSR_AMD64_CPUID_FN_1 ;
 int msr_build_context (int *,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int msr_save_cpuid_features(const struct x86_cpu_id *c)
{
 u32 cpuid_msr_id[] = {
  MSR_AMD64_CPUID_FN_1,
 };

 pr_info("x86/pm: family %#hx cpu detected, MSR saving is needed during suspending.\n",
  c->family);

 return msr_build_context(cpuid_msr_id, ARRAY_SIZE(cpuid_msr_id));
}
