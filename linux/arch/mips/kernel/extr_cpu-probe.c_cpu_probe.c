
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; scalar_t__ cputype; int fpu_msk31; int options; int ases; int srsets; int msa_id; int fpu_csr31; int writecombine; int fpu_id; } ;


 int BUG_ON (int) ;
 scalar_t__ CPU_UNKNOWN ;
 int FPIR_IMP_NONE ;
 int FPU_CSR_ABS2008 ;
 int FPU_CSR_NAN2008 ;
 int FPU_CSR_RN ;
 int FPU_CSR_RSVD ;
 int HWCAP_LOONGSON_EXT ;
 int HWCAP_LOONGSON_EXT2 ;
 int HWCAP_LOONGSON_MMI ;
 int HWCAP_MIPS_DSP ;
 int HWCAP_MIPS_DSP2 ;
 int HWCAP_MIPS_DSP3 ;
 int HWCAP_MIPS_MDMX ;
 int HWCAP_MIPS_MIPS16 ;
 int HWCAP_MIPS_MIPS16E2 ;
 int HWCAP_MIPS_MIPS3D ;
 int HWCAP_MIPS_MSA ;
 int HWCAP_MIPS_R6 ;
 int HWCAP_MIPS_SMARTMIPS ;
 int MIPS_ASE_DSP ;
 int MIPS_ASE_DSP2P ;
 int MIPS_CPU_FPU ;
 int MIPS_CPU_HTW ;
 int MIPS_CPU_PCI ;
 int MIPS_CPU_RIXIEX ;
 int MIPS_PWCTL_PWEN_SHIFT ;
 int MSA_IR_WRPF ;
 int PG_IEC ;
 int PRID_COMP_MASK ;





 int PRID_IMP_UNKNOWN ;
 int R10K_DIAG_E_GHIST ;
 int WARN (int,char*) ;
 int _CACHE_UNCACHED ;
 int * __cpu_name ;
 unsigned long long __ua_limit ;
 int back_to_back_c0_hazard () ;
 int cpu_get_msa_id () ;
 scalar_t__ cpu_has_bp_ghist ;
 scalar_t__ cpu_has_dsp ;
 scalar_t__ cpu_has_dsp2 ;
 scalar_t__ cpu_has_dsp3 ;
 scalar_t__ cpu_has_loongson_ext ;
 scalar_t__ cpu_has_loongson_ext2 ;
 scalar_t__ cpu_has_loongson_mmi ;
 scalar_t__ cpu_has_mdmx ;
 scalar_t__ cpu_has_mips16 ;
 scalar_t__ cpu_has_mips16e2 ;
 scalar_t__ cpu_has_mips3d ;
 scalar_t__ cpu_has_mips_r2_r6 ;
 scalar_t__ cpu_has_mips_r6 ;
 scalar_t__ cpu_has_msa ;
 scalar_t__ cpu_has_rixi ;
 scalar_t__ cpu_has_smartmips ;
 scalar_t__ cpu_has_vz ;
 int cpu_probe_alchemy (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_broadcom (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_cavium (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_ingenic (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_legacy (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_loongson (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_mips (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_netlogic (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_nxp (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_sandcraft (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_sibyte (struct cpuinfo_mips*,unsigned int) ;
 int cpu_probe_vmbits (struct cpuinfo_mips*) ;
 int cpu_probe_vz (struct cpuinfo_mips*) ;
 int cpu_set_fpu_opts (struct cpuinfo_mips*) ;
 int cpu_set_nofpu_opts (struct cpuinfo_mips*) ;
 unsigned long long cpu_vmbits ;
 struct cpuinfo_mips current_cpu_data ;
 scalar_t__ current_cpu_type () ;
 int elf_hwcap ;
 scalar_t__ mips_dsp_disabled ;
 scalar_t__ mips_fpu_disabled ;
 scalar_t__ mips_htw_disabled ;
 int read_c0_pagegrain () ;
 int read_c0_prid () ;
 int read_c0_pwctl () ;
 int read_c0_r10k_diag () ;
 int read_c0_srsctl () ;
 int set_c0_pagegrain (int) ;
 int set_elf_platform (unsigned int,char*) ;
 unsigned int smp_processor_id () ;
 int write_c0_pwctl (int) ;
 int write_c0_r10k_diag (int) ;

void cpu_probe(void)
{
 struct cpuinfo_mips *c = &current_cpu_data;
 unsigned int cpu = smp_processor_id();





 set_elf_platform(cpu, "mips");

 c->processor_id = PRID_IMP_UNKNOWN;
 c->fpu_id = FPIR_IMP_NONE;
 c->cputype = CPU_UNKNOWN;
 c->writecombine = _CACHE_UNCACHED;

 c->fpu_csr31 = FPU_CSR_RN;
 c->fpu_msk31 = FPU_CSR_RSVD | FPU_CSR_ABS2008 | FPU_CSR_NAN2008;

 c->processor_id = read_c0_prid();
 switch (c->processor_id & PRID_COMP_MASK) {
 case 134:
  cpu_probe_legacy(c, cpu);
  break;
 case 132:
  cpu_probe_mips(c, cpu);
  break;
 case 140:
  cpu_probe_alchemy(c, cpu);
  break;
 case 128:
  cpu_probe_sibyte(c, cpu);
  break;
 case 139:
  cpu_probe_broadcom(c, cpu);
  break;
 case 129:
  cpu_probe_sandcraft(c, cpu);
  break;
 case 130:
  cpu_probe_nxp(c, cpu);
  break;
 case 138:
  cpu_probe_cavium(c, cpu);
  break;
 case 133:
  cpu_probe_loongson(c, cpu);
  break;
 case 137:
 case 136:
 case 135:
  cpu_probe_ingenic(c, cpu);
  break;
 case 131:
  cpu_probe_netlogic(c, cpu);
  break;
 }

 BUG_ON(!__cpu_name[cpu]);
 BUG_ON(c->cputype == CPU_UNKNOWN);






 BUG_ON(current_cpu_type() != c->cputype);

 if (cpu_has_rixi) {

  set_c0_pagegrain(PG_IEC);
  back_to_back_c0_hazard();

  if (read_c0_pagegrain() & PG_IEC)
   c->options |= MIPS_CPU_RIXIEX;
 }

 if (mips_fpu_disabled)
  c->options &= ~MIPS_CPU_FPU;

 if (mips_dsp_disabled)
  c->ases &= ~(MIPS_ASE_DSP | MIPS_ASE_DSP2P);

 if (mips_htw_disabled) {
  c->options &= ~MIPS_CPU_HTW;
  write_c0_pwctl(read_c0_pwctl() &
          ~(1 << MIPS_PWCTL_PWEN_SHIFT));
 }

 if (c->options & MIPS_CPU_FPU)
  cpu_set_fpu_opts(c);
 else
  cpu_set_nofpu_opts(c);

 if (cpu_has_bp_ghist)
  write_c0_r10k_diag(read_c0_r10k_diag() |
       R10K_DIAG_E_GHIST);

 if (cpu_has_mips_r2_r6) {
  c->srsets = ((read_c0_srsctl() >> 26) & 0x0f) + 1;

  c->options |= MIPS_CPU_PCI;
 }
 else
  c->srsets = 1;

 if (cpu_has_mips_r6)
  elf_hwcap |= HWCAP_MIPS_R6;

 if (cpu_has_msa) {
  c->msa_id = cpu_get_msa_id();
  WARN(c->msa_id & MSA_IR_WRPF,
       "Vector register partitioning unimplemented!");
  elf_hwcap |= HWCAP_MIPS_MSA;
 }

 if (cpu_has_mips16)
  elf_hwcap |= HWCAP_MIPS_MIPS16;

 if (cpu_has_mdmx)
  elf_hwcap |= HWCAP_MIPS_MDMX;

 if (cpu_has_mips3d)
  elf_hwcap |= HWCAP_MIPS_MIPS3D;

 if (cpu_has_smartmips)
  elf_hwcap |= HWCAP_MIPS_SMARTMIPS;

 if (cpu_has_dsp)
  elf_hwcap |= HWCAP_MIPS_DSP;

 if (cpu_has_dsp2)
  elf_hwcap |= HWCAP_MIPS_DSP2;

 if (cpu_has_dsp3)
  elf_hwcap |= HWCAP_MIPS_DSP3;

 if (cpu_has_mips16e2)
  elf_hwcap |= HWCAP_MIPS_MIPS16E2;

 if (cpu_has_loongson_mmi)
  elf_hwcap |= HWCAP_LOONGSON_MMI;

 if (cpu_has_loongson_ext)
  elf_hwcap |= HWCAP_LOONGSON_EXT;

 if (cpu_has_loongson_ext2)
  elf_hwcap |= HWCAP_LOONGSON_EXT2;

 if (cpu_has_vz)
  cpu_probe_vz(c);

 cpu_probe_vmbits(c);





}
