
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; scalar_t__ cputype; int options; int tlbsize; int kscratch_mask; } ;


 scalar_t__ CPU_ALCHEMY ;
 scalar_t__ CPU_XLP ;
 void* CPU_XLR ;
 int MIPS_CPU_4KEX ;
 int MIPS_CPU_COUNTER ;
 int MIPS_CPU_DIVEC ;
 int MIPS_CPU_EJTAG ;
 int MIPS_CPU_FPU ;
 int MIPS_CPU_ISA_M64R1 ;
 int MIPS_CPU_ISA_M64R2 ;
 int MIPS_CPU_LLSC ;
 int MIPS_CPU_MCHECK ;
 int MIPS_CPU_TLB ;
 int MIPS_CPU_ULRI ;
 int MIPS_CPU_WATCH ;
 int PRID_IMP_MASK ;
 int PRID_IMP_NETLOGIC_AU13XX ;
 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;
 int pr_info (char*,int) ;
 int read_c0_config1 () ;
 int read_c0_config6 () ;
 int set_isa (struct cpuinfo_mips*,int ) ;

__attribute__((used)) static inline void cpu_probe_netlogic(struct cpuinfo_mips *c, int cpu)
{
 decode_configs(c);

 if ((c->processor_id & PRID_IMP_MASK) == PRID_IMP_NETLOGIC_AU13XX) {
  c->cputype = CPU_ALCHEMY;
  __cpu_name[cpu] = "Au1300";

  return;
 }

 c->options = (MIPS_CPU_TLB |
   MIPS_CPU_4KEX |
   MIPS_CPU_COUNTER |
   MIPS_CPU_DIVEC |
   MIPS_CPU_WATCH |
   MIPS_CPU_EJTAG |
   MIPS_CPU_LLSC);

 switch (c->processor_id & PRID_IMP_MASK) {
 case 153:
 case 149:
 case 151:
  c->cputype = CPU_XLP;
  __cpu_name[cpu] = "Broadcom XLPII";
  break;

 case 150:
 case 152:
  c->cputype = CPU_XLP;
  __cpu_name[cpu] = "Netlogic XLP";
  break;

 case 141:
 case 142:
 case 144:
 case 148:
 case 143:
 case 145:
 case 146:
 case 147:
  c->cputype = CPU_XLR;
  __cpu_name[cpu] = "Netlogic XLR";
  break;

 case 130:
 case 134:
 case 136:
 case 137:
 case 138:
 case 139:
 case 140:
 case 128:
 case 129:
 case 131:
 case 132:
 case 133:
 case 135:
  c->cputype = CPU_XLR;
  __cpu_name[cpu] = "Netlogic XLS";
  break;

 default:
  pr_info("Unknown Netlogic chip id [%02x]!\n",
         c->processor_id);
  c->cputype = CPU_XLR;
  break;
 }

 if (c->cputype == CPU_XLP) {
  set_isa(c, MIPS_CPU_ISA_M64R2);
  c->options |= (MIPS_CPU_FPU | MIPS_CPU_ULRI | MIPS_CPU_MCHECK);

  c->tlbsize = ((read_c0_config6() >> 16) & 0xffff) + 1;
 } else {
  set_isa(c, MIPS_CPU_ISA_M64R1);
  c->tlbsize = ((read_c0_config1() >> 25) & 0x3f) + 1;
 }
 c->kscratch_mask = 0xf;
}
