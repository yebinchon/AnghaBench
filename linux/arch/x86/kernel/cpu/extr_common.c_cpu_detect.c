
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int cpuid_level; int x86; int x86_clflush_size; int x86_cache_alignment; int x86_stepping; int x86_model; int * x86_vendor_id; } ;


 int cpuid (int,...) ;
 int x86_family (int) ;
 int x86_model (int) ;
 int x86_stepping (int) ;

void cpu_detect(struct cpuinfo_x86 *c)
{

 cpuid(0x00000000, (unsigned int *)&c->cpuid_level,
       (unsigned int *)&c->x86_vendor_id[0],
       (unsigned int *)&c->x86_vendor_id[8],
       (unsigned int *)&c->x86_vendor_id[4]);

 c->x86 = 4;

 if (c->cpuid_level >= 0x00000001) {
  u32 junk, tfms, cap0, misc;

  cpuid(0x00000001, &tfms, &misc, &junk, &cap0);
  c->x86 = x86_family(tfms);
  c->x86_model = x86_model(tfms);
  c->x86_stepping = x86_stepping(tfms);

  if (cap0 & (1<<19)) {
   c->x86_clflush_size = ((misc >> 8) & 0xff) * 8;
   c->x86_cache_alignment = c->x86_clflush_size;
  }
 }
}
