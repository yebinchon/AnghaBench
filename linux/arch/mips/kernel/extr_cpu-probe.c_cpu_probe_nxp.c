
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; int cputype; } ;


 int CPU_PR4450 ;
 int MIPS_CPU_ISA_M32R1 ;
 int PRID_IMP_MASK ;

 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;
 int set_isa (struct cpuinfo_mips*,int ) ;

__attribute__((used)) static inline void cpu_probe_nxp(struct cpuinfo_mips *c, unsigned int cpu)
{
 decode_configs(c);
 switch (c->processor_id & PRID_IMP_MASK) {
 case 128:
  c->cputype = CPU_PR4450;
  __cpu_name[cpu] = "Philips PR4450";
  set_isa(c, MIPS_CPU_ISA_M32R1);
  break;
 }
}
