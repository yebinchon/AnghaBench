
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CPU_FTR_ARCH_300 ;
 int MMCRA_THR_CMP_SHIFT ;
 scalar_t__ cpu_has_feature (int ) ;
 int p9_MMCRA_THR_CMP_SHIFT ;

__attribute__((used)) static u64 thresh_cmp_val(u64 value)
{
 if (cpu_has_feature(CPU_FTR_ARCH_300))
  return value << p9_MMCRA_THR_CMP_SHIFT;

 return value << MMCRA_THR_CMP_SHIFT;
}
