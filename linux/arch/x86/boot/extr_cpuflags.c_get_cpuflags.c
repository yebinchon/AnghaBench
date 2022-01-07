
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* flags; int level; int family; int model; } ;


 int X86_EFLAGS_ID ;
 int X86_FEATURE_FPU ;
 TYPE_1__ cpu ;
 int* cpu_vendor ;
 int cpuid (int,int*,int*,int*,int*) ;
 int cpuid_count (int,int ,int*,int*,int*,int*) ;
 scalar_t__ has_eflag (int ) ;
 scalar_t__ has_fpu () ;
 int loaded_flags ;
 int set_bit (int ,int*) ;

void get_cpuflags(void)
{
 u32 max_intel_level, max_amd_level;
 u32 tfms;
 u32 ignored;

 if (loaded_flags)
  return;
 loaded_flags = 1;

 if (has_fpu())
  set_bit(X86_FEATURE_FPU, cpu.flags);

 if (has_eflag(X86_EFLAGS_ID)) {
  cpuid(0x0, &max_intel_level, &cpu_vendor[0], &cpu_vendor[2],
        &cpu_vendor[1]);

  if (max_intel_level >= 0x00000001 &&
      max_intel_level <= 0x0000ffff) {
   cpuid(0x1, &tfms, &ignored, &cpu.flags[4],
         &cpu.flags[0]);
   cpu.level = (tfms >> 8) & 15;
   cpu.family = cpu.level;
   cpu.model = (tfms >> 4) & 15;
   if (cpu.level >= 6)
    cpu.model += ((tfms >> 16) & 0xf) << 4;
  }

  if (max_intel_level >= 0x00000007) {
   cpuid_count(0x00000007, 0, &ignored, &ignored,
     &cpu.flags[16], &ignored);
  }

  cpuid(0x80000000, &max_amd_level, &ignored, &ignored,
        &ignored);

  if (max_amd_level >= 0x80000001 &&
      max_amd_level <= 0x8000ffff) {
   cpuid(0x80000001, &ignored, &ignored, &cpu.flags[6],
         &cpu.flags[1]);
  }
 }
}
