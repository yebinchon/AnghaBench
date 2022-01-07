
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CTR_DMINLINE_SHIFT ;
 int SYS_CTR_EL0 ;
 int cpuid_feature_extract_unsigned_field (int,int ) ;
 int read_sanitised_ftr_reg (int ) ;

__attribute__((used)) static void clean_dcache_range_nopatch(u64 start, u64 end)
{
 u64 cur, d_size, ctr_el0;

 ctr_el0 = read_sanitised_ftr_reg(SYS_CTR_EL0);
 d_size = 4 << cpuid_feature_extract_unsigned_field(ctr_el0,
          CTR_DMINLINE_SHIFT);
 cur = start & ~(d_size - 1);
 do {





  asm volatile("dc civac, %0" : : "r" (cur) : "memory");
 } while (cur += d_size, cur < end);
}
