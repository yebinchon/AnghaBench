
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ways; } ;
struct cpuinfo_mips {int processor_id; int tlbsize; TYPE_1__ scache; int cputype; } ;


 int CPU_SR71000 ;
 int PRID_IMP_MASK ;

 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;

__attribute__((used)) static inline void cpu_probe_sandcraft(struct cpuinfo_mips *c, unsigned int cpu)
{
 decode_configs(c);
 switch (c->processor_id & PRID_IMP_MASK) {
 case 128:
  c->cputype = CPU_SR71000;
  __cpu_name[cpu] = "Sandcraft SR71000";
  c->scache.ways = 8;
  c->tlbsize = 64;
  break;
 }
}
