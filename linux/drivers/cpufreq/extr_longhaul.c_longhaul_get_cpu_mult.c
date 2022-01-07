
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_EBL_CR_POWERON ;
 scalar_t__ TYPE_LONGHAUL_V2 ;
 scalar_t__ TYPE_POWERSAVER ;
 int* eblcr ;
 scalar_t__ longhaul_version ;
 int rdmsr (int ,unsigned long,unsigned long) ;

__attribute__((used)) static int longhaul_get_cpu_mult(void)
{
 unsigned long invalue = 0, lo, hi;

 rdmsr(MSR_IA32_EBL_CR_POWERON, lo, hi);
 invalue = (lo & (1<<22|1<<23|1<<24|1<<25))>>22;
 if (longhaul_version == TYPE_LONGHAUL_V2 ||
     longhaul_version == TYPE_POWERSAVER) {
  if (lo & (1<<27))
   invalue += 16;
 }
 return eblcr[invalue];
}
