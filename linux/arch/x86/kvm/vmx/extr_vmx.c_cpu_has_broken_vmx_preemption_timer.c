
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int*) ;
 int cpuid_eax (int) ;
 int* vmx_preemption_cpu_tfms ;

__attribute__((used)) static inline bool cpu_has_broken_vmx_preemption_timer(void)
{
 u32 eax = cpuid_eax(0x00000001), i;


 eax &= ~(0x3U << 14 | 0xfU << 28);
 for (i = 0; i < ARRAY_SIZE(vmx_preemption_cpu_tfms); i++)
  if (eax == vmx_preemption_cpu_tfms[i])
   return 1;

 return 0;
}
