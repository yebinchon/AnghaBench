
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_PKEY ;
 int FW_FEATURE_LPAR ;
 int cpu_has_feature (int ) ;
 scalar_t__ firmware_has_feature (int ) ;
 int pkeys_total ;

__attribute__((used)) static inline bool pkey_mmu_enabled(void)
{
 if (firmware_has_feature(FW_FEATURE_LPAR))
  return pkeys_total;
 else
  return cpu_has_feature(CPU_FTR_PKEY);
}
