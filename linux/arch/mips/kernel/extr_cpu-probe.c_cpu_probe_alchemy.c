
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; int cputype; } ;


 int CPU_ALCHEMY ;


 int PRID_IMP_MASK ;
 int PRID_REV_MASK ;
 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;

__attribute__((used)) static inline void cpu_probe_alchemy(struct cpuinfo_mips *c, unsigned int cpu)
{
 decode_configs(c);
 switch (c->processor_id & PRID_IMP_MASK) {
 case 129:
 case 128:
  c->cputype = CPU_ALCHEMY;
  switch ((c->processor_id >> 24) & 0xff) {
  case 0:
   __cpu_name[cpu] = "Au1000";
   break;
  case 1:
   __cpu_name[cpu] = "Au1500";
   break;
  case 2:
   __cpu_name[cpu] = "Au1100";
   break;
  case 3:
   __cpu_name[cpu] = "Au1550";
   break;
  case 4:
   __cpu_name[cpu] = "Au1200";
   if ((c->processor_id & PRID_REV_MASK) == 2)
    __cpu_name[cpu] = "Au1250";
   break;
  case 5:
   __cpu_name[cpu] = "Au1210";
   break;
  default:
   __cpu_name[cpu] = "Au1xxx";
   break;
  }
  break;
 }
}
