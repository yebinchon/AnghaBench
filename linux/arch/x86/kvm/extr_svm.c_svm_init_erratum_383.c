
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;


 int MSR_AMD64_DC_CFG ;
 int X86_BUG_AMD_TLB_MMATCH ;
 int erratum_383_found ;
 int lower_32_bits (unsigned long long) ;
 unsigned long long native_read_msr_safe (int ,int*) ;
 int native_write_msr_safe (int ,int ,int ) ;
 int static_cpu_has_bug (int ) ;
 int upper_32_bits (unsigned long long) ;

__attribute__((used)) static void svm_init_erratum_383(void)
{
 u32 low, high;
 int err;
 u64 val;

 if (!static_cpu_has_bug(X86_BUG_AMD_TLB_MMATCH))
  return;


 val = native_read_msr_safe(MSR_AMD64_DC_CFG, &err);
 if (err)
  return;

 val |= (1ULL << 47);

 low = lower_32_bits(val);
 high = upper_32_bits(val);

 native_write_msr_safe(MSR_AMD64_DC_CFG, low, high);

 erratum_383_found = 1;
}
