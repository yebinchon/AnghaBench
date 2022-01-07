
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; int options; int ases; int writecombine; void* cputype; } ;


 void* CPU_LOONGSON3 ;
 int MIPS_ASE_LOONGSON_CAM ;
 int MIPS_ASE_LOONGSON_EXT ;
 int MIPS_ASE_LOONGSON_EXT2 ;
 int MIPS_ASE_LOONGSON_MMI ;
 int MIPS_CPU_FTLB ;
 int MIPS_CPU_ISA_M64R2 ;
 int MIPS_CPU_LDPTE ;
 int MIPS_CPU_TLBINV ;

 int PRID_IMP_MASK ;




 int PRID_REV_MASK ;
 int _CACHE_UNCACHED_ACCELERATED ;
 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;
 int panic (char*) ;
 int set_elf_platform (unsigned int,char*) ;
 int set_isa (struct cpuinfo_mips*,int ) ;

__attribute__((used)) static inline void cpu_probe_loongson(struct cpuinfo_mips *c, unsigned int cpu)
{
 switch (c->processor_id & PRID_IMP_MASK) {
 case 132:
  switch (c->processor_id & PRID_REV_MASK) {
  case 131:
  case 130:
   c->cputype = CPU_LOONGSON3;
   __cpu_name[cpu] = "ICT Loongson-3";
   set_elf_platform(cpu, "loongson3a");
   set_isa(c, MIPS_CPU_ISA_M64R2);
   break;
  case 129:
  case 128:
   c->cputype = CPU_LOONGSON3;
   __cpu_name[cpu] = "ICT Loongson-3";
   set_elf_platform(cpu, "loongson3a");
   set_isa(c, MIPS_CPU_ISA_M64R2);
   break;
  }

  decode_configs(c);
  c->options |= MIPS_CPU_FTLB | MIPS_CPU_TLBINV | MIPS_CPU_LDPTE;
  c->writecombine = _CACHE_UNCACHED_ACCELERATED;
  c->ases |= (MIPS_ASE_LOONGSON_MMI | MIPS_ASE_LOONGSON_CAM |
   MIPS_ASE_LOONGSON_EXT | MIPS_ASE_LOONGSON_EXT2);
  break;
 default:
  panic("Unknown Loongson Processor ID!");
  break;
 }
}
