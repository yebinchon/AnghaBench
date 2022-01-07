
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int extended_cpuid_level; int x86_virt_bits; int x86_phys_bits; int x86_cache_bits; } ;


 int X86_FEATURE_PAE ;
 int X86_FEATURE_PSE36 ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int cpuid (int,int*,int*,int*,int*) ;

void get_cpu_address_sizes(struct cpuinfo_x86 *c)
{
 u32 eax, ebx, ecx, edx;

 if (c->extended_cpuid_level >= 0x80000008) {
  cpuid(0x80000008, &eax, &ebx, &ecx, &edx);

  c->x86_virt_bits = (eax >> 8) & 0xff;
  c->x86_phys_bits = eax & 0xff;
 }




 c->x86_cache_bits = c->x86_phys_bits;
}
