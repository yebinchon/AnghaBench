
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86; int apicid; } ;


 int MSR_F10H_DECFG ;
 int MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT ;
 int X86_BUG_FXSAVE_LEAK ;
 int X86_BUG_SYSRET_SS_ATTRS ;
 int X86_FEATURE_3DNOW ;
 int X86_FEATURE_3DNOWPREFETCH ;
 int X86_FEATURE_ARAT ;
 int X86_FEATURE_LFENCE_RDTSC ;
 int X86_FEATURE_LM ;
 int X86_FEATURE_MCE ;
 int X86_FEATURE_REP_GOOD ;
 int X86_FEATURE_XENPV ;
 int X86_FEATURE_XMM2 ;
 int X86_FEATURE_XSAVEERPTR ;
 int amd_detect_cmp (struct cpuinfo_x86*) ;
 int amd_get_topology (struct cpuinfo_x86*) ;
 int clear_cpu_cap (struct cpuinfo_x86*,int) ;
 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int early_init_amd (struct cpuinfo_x86*) ;
 int hard_smp_processor_id () ;
 int init_amd_bd (struct cpuinfo_x86*) ;
 int init_amd_cacheinfo (struct cpuinfo_x86*) ;
 int init_amd_gh (struct cpuinfo_x86*) ;
 int init_amd_jg (struct cpuinfo_x86*) ;
 int init_amd_k5 (struct cpuinfo_x86*) ;
 int init_amd_k6 (struct cpuinfo_x86*) ;
 int init_amd_k7 (struct cpuinfo_x86*) ;
 int init_amd_k8 (struct cpuinfo_x86*) ;
 int init_amd_ln (struct cpuinfo_x86*) ;
 int init_amd_zn (struct cpuinfo_x86*) ;
 int msr_set_bit (int ,int ) ;
 int set_cpu_bug (struct cpuinfo_x86*,int ) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int srat_detect_node (struct cpuinfo_x86*) ;

__attribute__((used)) static void init_amd(struct cpuinfo_x86 *c)
{
 early_init_amd(c);





 clear_cpu_cap(c, 0*32+31);

 if (c->x86 >= 0x10)
  set_cpu_cap(c, X86_FEATURE_REP_GOOD);


 c->apicid = hard_smp_processor_id();


 if (c->x86 < 6)
  clear_cpu_cap(c, X86_FEATURE_MCE);

 switch (c->x86) {
 case 4: init_amd_k5(c); break;
 case 5: init_amd_k6(c); break;
 case 6: init_amd_k7(c); break;
 case 0xf: init_amd_k8(c); break;
 case 0x10: init_amd_gh(c); break;
 case 0x12: init_amd_ln(c); break;
 case 0x15: init_amd_bd(c); break;
 case 0x16: init_amd_jg(c); break;
 case 0x17: init_amd_zn(c); break;
 }





 if ((c->x86 >= 6) && (!cpu_has(c, X86_FEATURE_XSAVEERPTR)))
  set_cpu_bug(c, X86_BUG_FXSAVE_LEAK);

 cpu_detect_cache_sizes(c);

 amd_detect_cmp(c);
 amd_get_topology(c);
 srat_detect_node(c);

 init_amd_cacheinfo(c);

 if (cpu_has(c, X86_FEATURE_XMM2)) {






  msr_set_bit(MSR_F10H_DECFG,
       MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT);


  set_cpu_cap(c, X86_FEATURE_LFENCE_RDTSC);
 }





 if (c->x86 > 0x11)
  set_cpu_cap(c, X86_FEATURE_ARAT);


 if (!cpu_has(c, X86_FEATURE_3DNOWPREFETCH))
  if (cpu_has(c, X86_FEATURE_3DNOW) || cpu_has(c, X86_FEATURE_LM))
   set_cpu_cap(c, X86_FEATURE_3DNOWPREFETCH);


 if (!cpu_has(c, X86_FEATURE_XENPV))
  set_cpu_bug(c, X86_BUG_SYSRET_SS_ATTRS);
}
