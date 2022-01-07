
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int cpuid_level; } ;


 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int cpuid_eax (int) ;
 int intel_tlb_lookup (unsigned char) ;

__attribute__((used)) static void intel_detect_tlb(struct cpuinfo_x86 *c)
{
 int i, j, n;
 unsigned int regs[4];
 unsigned char *desc = (unsigned char *)regs;

 if (c->cpuid_level < 2)
  return;


 n = cpuid_eax(2) & 0xFF;

 for (i = 0 ; i < n ; i++) {
  cpuid(2, &regs[0], &regs[1], &regs[2], &regs[3]);


  for (j = 0 ; j < 3 ; j++)
   if (regs[j] & (1 << 31))
    regs[j] = 0;


  for (j = 1 ; j < 16 ; j++)
   intel_tlb_lookup(desc[j]);
 }
}
