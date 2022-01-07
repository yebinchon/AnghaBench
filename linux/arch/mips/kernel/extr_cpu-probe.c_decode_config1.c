
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int tlbsize; unsigned int tlbsizevtlb; scalar_t__ tlbsizeftlbsets; int options; int ases; } ;


 int MIPS_ASE_MDMX ;
 int MIPS_ASE_MIPS16 ;
 unsigned int MIPS_CONF1_CA ;
 unsigned int MIPS_CONF1_EP ;
 unsigned int MIPS_CONF1_FP ;
 unsigned int MIPS_CONF1_MD ;
 unsigned int MIPS_CONF1_PC ;
 unsigned int MIPS_CONF1_TLBS ;
 unsigned int MIPS_CONF1_WR ;
 unsigned int MIPS_CONF_M ;
 int MIPS_CPU_32FPR ;
 int MIPS_CPU_EJTAG ;
 int MIPS_CPU_FPU ;
 int MIPS_CPU_PERF ;
 int MIPS_CPU_WATCH ;
 scalar_t__ cpu_has_tlb ;
 unsigned int read_c0_config1 () ;

__attribute__((used)) static inline unsigned int decode_config1(struct cpuinfo_mips *c)
{
 unsigned int config1;

 config1 = read_c0_config1();

 if (config1 & MIPS_CONF1_MD)
  c->ases |= MIPS_ASE_MDMX;
 if (config1 & MIPS_CONF1_PC)
  c->options |= MIPS_CPU_PERF;
 if (config1 & MIPS_CONF1_WR)
  c->options |= MIPS_CPU_WATCH;
 if (config1 & MIPS_CONF1_CA)
  c->ases |= MIPS_ASE_MIPS16;
 if (config1 & MIPS_CONF1_EP)
  c->options |= MIPS_CPU_EJTAG;
 if (config1 & MIPS_CONF1_FP) {
  c->options |= MIPS_CPU_FPU;
  c->options |= MIPS_CPU_32FPR;
 }
 if (cpu_has_tlb) {
  c->tlbsize = ((config1 & MIPS_CONF1_TLBS) >> 25) + 1;
  c->tlbsizevtlb = c->tlbsize;
  c->tlbsizeftlbsets = 0;
 }

 return config1 & MIPS_CONF_M;
}
