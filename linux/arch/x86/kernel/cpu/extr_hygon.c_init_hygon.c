
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int apicid; } ;


 int MSR_F10H_DECFG ;
 int MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT ;
 int X86_BUG_SYSRET_SS_ATTRS ;
 int X86_FEATURE_ARAT ;
 int X86_FEATURE_CPB ;
 int X86_FEATURE_LFENCE_RDTSC ;
 int X86_FEATURE_REP_GOOD ;
 int X86_FEATURE_XENPV ;
 int X86_FEATURE_XMM2 ;
 int X86_FEATURE_ZEN ;
 int clear_cpu_cap (struct cpuinfo_x86*,int) ;
 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int early_init_hygon (struct cpuinfo_x86*) ;
 int hard_smp_processor_id () ;
 int hygon_detect_cmp (struct cpuinfo_x86*) ;
 int hygon_get_topology (struct cpuinfo_x86*) ;
 int init_hygon_cacheinfo (struct cpuinfo_x86*) ;
 int msr_set_bit (int ,int ) ;
 int set_cpu_bug (struct cpuinfo_x86*,int ) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int srat_detect_node (struct cpuinfo_x86*) ;

__attribute__((used)) static void init_hygon(struct cpuinfo_x86 *c)
{
 early_init_hygon(c);





 clear_cpu_cap(c, 0*32+31);

 set_cpu_cap(c, X86_FEATURE_REP_GOOD);


 c->apicid = hard_smp_processor_id();

 set_cpu_cap(c, X86_FEATURE_ZEN);
 set_cpu_cap(c, X86_FEATURE_CPB);

 cpu_detect_cache_sizes(c);

 hygon_detect_cmp(c);
 hygon_get_topology(c);
 srat_detect_node(c);

 init_hygon_cacheinfo(c);

 if (cpu_has(c, X86_FEATURE_XMM2)) {






  msr_set_bit(MSR_F10H_DECFG,
       MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT);


  set_cpu_cap(c, X86_FEATURE_LFENCE_RDTSC);
 }




 set_cpu_cap(c, X86_FEATURE_ARAT);


 if (!cpu_has(c, X86_FEATURE_XENPV))
  set_cpu_bug(c, X86_BUG_SYSRET_SS_ATTRS);
}
