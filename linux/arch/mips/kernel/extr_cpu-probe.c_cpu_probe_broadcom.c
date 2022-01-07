
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; int options; int cputype; } ;


 int CPU_BMIPS32 ;
 int CPU_BMIPS3300 ;
 int CPU_BMIPS4350 ;
 int CPU_BMIPS4380 ;
 int CPU_BMIPS5000 ;
 int MIPS_CPU_RIXI ;
 int MIPS_CPU_ULRI ;
 int PRID_IMP_MASK ;
 int PRID_REV_BMIPS4380_HI ;
 int PRID_REV_BMIPS4380_LO ;
 int PRID_REV_MASK ;
 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;
 int set_elf_platform (unsigned int,char*) ;

__attribute__((used)) static inline void cpu_probe_broadcom(struct cpuinfo_mips *c, unsigned int cpu)
{
 decode_configs(c);
 switch (c->processor_id & PRID_IMP_MASK) {
 case 135:
 case 134:
  c->cputype = CPU_BMIPS32;
  __cpu_name[cpu] = "Broadcom BMIPS32";
  set_elf_platform(cpu, "bmips32");
  break;
 case 133:
 case 132:
 case 131:
  c->cputype = CPU_BMIPS3300;
  __cpu_name[cpu] = "Broadcom BMIPS3300";
  set_elf_platform(cpu, "bmips3300");
  break;
 case 130: {
  int rev = c->processor_id & PRID_REV_MASK;

  if (rev >= PRID_REV_BMIPS4380_LO &&
    rev <= PRID_REV_BMIPS4380_HI) {
   c->cputype = CPU_BMIPS4380;
   __cpu_name[cpu] = "Broadcom BMIPS4380";
   set_elf_platform(cpu, "bmips4380");
   c->options |= MIPS_CPU_RIXI;
  } else {
   c->cputype = CPU_BMIPS4350;
   __cpu_name[cpu] = "Broadcom BMIPS4350";
   set_elf_platform(cpu, "bmips4350");
  }
  break;
 }
 case 129:
 case 128:
  c->cputype = CPU_BMIPS5000;
  if ((c->processor_id & PRID_IMP_MASK) == 128)
   __cpu_name[cpu] = "Broadcom BMIPS5200";
  else
   __cpu_name[cpu] = "Broadcom BMIPS5000";
  set_elf_platform(cpu, "bmips5000");
  c->options |= MIPS_CPU_ULRI | MIPS_CPU_RIXI;
  break;
 }
}
