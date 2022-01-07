
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int options; } ;


 int MIPS_CPU_MT_PER_TC_PERF_COUNTERS ;
 int MTI_CONF7_PTC ;
 int read_c0_config7 () ;

__attribute__((used)) static inline void cpu_set_mt_per_tc_perf(struct cpuinfo_mips *c)
{
 if (read_c0_config7() & MTI_CONF7_PTC)
  c->options |= MIPS_CPU_MT_PER_TC_PERF_COUNTERS;
}
