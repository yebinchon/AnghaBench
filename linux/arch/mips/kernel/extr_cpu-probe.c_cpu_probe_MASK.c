#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cpuinfo_mips {int processor_id; scalar_t__ cputype; int fpu_msk31; int options; int ases; int srsets; int msa_id; int /*<<< orphan*/  fpu_csr31; int /*<<< orphan*/  writecombine; int /*<<< orphan*/  fpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CPU_UNKNOWN ; 
 int /*<<< orphan*/  FPIR_IMP_NONE ; 
 int FPU_CSR_ABS2008 ; 
 int FPU_CSR_NAN2008 ; 
 int /*<<< orphan*/  FPU_CSR_RN ; 
 int FPU_CSR_RSVD ; 
 int /*<<< orphan*/  HWCAP_LOONGSON_EXT ; 
 int /*<<< orphan*/  HWCAP_LOONGSON_EXT2 ; 
 int /*<<< orphan*/  HWCAP_LOONGSON_MMI ; 
 int /*<<< orphan*/  HWCAP_MIPS_DSP ; 
 int /*<<< orphan*/  HWCAP_MIPS_DSP2 ; 
 int /*<<< orphan*/  HWCAP_MIPS_DSP3 ; 
 int /*<<< orphan*/  HWCAP_MIPS_MDMX ; 
 int /*<<< orphan*/  HWCAP_MIPS_MIPS16 ; 
 int /*<<< orphan*/  HWCAP_MIPS_MIPS16E2 ; 
 int /*<<< orphan*/  HWCAP_MIPS_MIPS3D ; 
 int /*<<< orphan*/  HWCAP_MIPS_MSA ; 
 int /*<<< orphan*/  HWCAP_MIPS_R6 ; 
 int /*<<< orphan*/  HWCAP_MIPS_SMARTMIPS ; 
 int MIPS_ASE_DSP ; 
 int MIPS_ASE_DSP2P ; 
 int MIPS_CPU_FPU ; 
 int MIPS_CPU_HTW ; 
 int MIPS_CPU_PCI ; 
 int MIPS_CPU_RIXIEX ; 
 int MIPS_PWCTL_PWEN_SHIFT ; 
 int MSA_IR_WRPF ; 
 int PG_IEC ; 
#define  PRID_COMP_ALCHEMY 140 
#define  PRID_COMP_BROADCOM 139 
#define  PRID_COMP_CAVIUM 138 
#define  PRID_COMP_INGENIC_D0 137 
#define  PRID_COMP_INGENIC_D1 136 
#define  PRID_COMP_INGENIC_E1 135 
#define  PRID_COMP_LEGACY 134 
#define  PRID_COMP_LOONGSON 133 
 int PRID_COMP_MASK ; 
#define  PRID_COMP_MIPS 132 
#define  PRID_COMP_NETLOGIC 131 
#define  PRID_COMP_NXP 130 
#define  PRID_COMP_SANDCRAFT 129 
#define  PRID_COMP_SIBYTE 128 
 int PRID_IMP_UNKNOWN ; 
 int R10K_DIAG_E_GHIST ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  _CACHE_UNCACHED ; 
 int /*<<< orphan*/ * __cpu_name ; 
 unsigned long long __ua_limit ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
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
 int /*<<< orphan*/  FUNC4 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct cpuinfo_mips*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct cpuinfo_mips*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpuinfo_mips*) ; 
 int /*<<< orphan*/  FUNC17 (struct cpuinfo_mips*) ; 
 int /*<<< orphan*/  FUNC18 (struct cpuinfo_mips*) ; 
 unsigned long long cpu_vmbits ; 
 struct cpuinfo_mips current_cpu_data ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  elf_hwcap ; 
 scalar_t__ mips_dsp_disabled ; 
 scalar_t__ mips_fpu_disabled ; 
 scalar_t__ mips_htw_disabled ; 
 int FUNC20 () ; 
 int FUNC21 () ; 
 int FUNC22 () ; 
 int FUNC23 () ; 
 int FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int,char*) ; 
 unsigned int FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 

void FUNC30(void)
{
	struct cpuinfo_mips *c = &current_cpu_data;
	unsigned int cpu = FUNC27();

	/*
	 * Set a default elf platform, cpu probe may later
	 * overwrite it with a more precise value
	 */
	FUNC26(cpu, "mips");

	c->processor_id = PRID_IMP_UNKNOWN;
	c->fpu_id	= FPIR_IMP_NONE;
	c->cputype	= CPU_UNKNOWN;
	c->writecombine = _CACHE_UNCACHED;

	c->fpu_csr31	= FPU_CSR_RN;
	c->fpu_msk31	= FPU_CSR_RSVD | FPU_CSR_ABS2008 | FPU_CSR_NAN2008;

	c->processor_id = FUNC21();
	switch (c->processor_id & PRID_COMP_MASK) {
	case PRID_COMP_LEGACY:
		FUNC8(c, cpu);
		break;
	case PRID_COMP_MIPS:
		FUNC10(c, cpu);
		break;
	case PRID_COMP_ALCHEMY:
		FUNC4(c, cpu);
		break;
	case PRID_COMP_SIBYTE:
		FUNC14(c, cpu);
		break;
	case PRID_COMP_BROADCOM:
		FUNC5(c, cpu);
		break;
	case PRID_COMP_SANDCRAFT:
		FUNC13(c, cpu);
		break;
	case PRID_COMP_NXP:
		FUNC12(c, cpu);
		break;
	case PRID_COMP_CAVIUM:
		FUNC6(c, cpu);
		break;
	case PRID_COMP_LOONGSON:
		FUNC9(c, cpu);
		break;
	case PRID_COMP_INGENIC_D0:
	case PRID_COMP_INGENIC_D1:
	case PRID_COMP_INGENIC_E1:
		FUNC7(c, cpu);
		break;
	case PRID_COMP_NETLOGIC:
		FUNC11(c, cpu);
		break;
	}

	FUNC0(!__cpu_name[cpu]);
	FUNC0(c->cputype == CPU_UNKNOWN);

	/*
	 * Platform code can force the cpu type to optimize code
	 * generation. In that case be sure the cpu type is correctly
	 * manually setup otherwise it could trigger some nasty bugs.
	 */
	FUNC0(FUNC19() != c->cputype);

	if (cpu_has_rixi) {
		/* Enable the RIXI exceptions */
		FUNC25(PG_IEC);
		FUNC2();
		/* Verify the IEC bit is set */
		if (FUNC20() & PG_IEC)
			c->options |= MIPS_CPU_RIXIEX;
	}

	if (mips_fpu_disabled)
		c->options &= ~MIPS_CPU_FPU;

	if (mips_dsp_disabled)
		c->ases &= ~(MIPS_ASE_DSP | MIPS_ASE_DSP2P);

	if (mips_htw_disabled) {
		c->options &= ~MIPS_CPU_HTW;
		FUNC28(FUNC22() &
			       ~(1 << MIPS_PWCTL_PWEN_SHIFT));
	}

	if (c->options & MIPS_CPU_FPU)
		FUNC17(c);
	else
		FUNC18(c);

	if (cpu_has_bp_ghist)
		FUNC29(FUNC23() |
				   R10K_DIAG_E_GHIST);

	if (cpu_has_mips_r2_r6) {
		c->srsets = ((FUNC24() >> 26) & 0x0f) + 1;
		/* R2 has Performance Counter Interrupt indicator */
		c->options |= MIPS_CPU_PCI;
	}
	else
		c->srsets = 1;

	if (cpu_has_mips_r6)
		elf_hwcap |= HWCAP_MIPS_R6;

	if (cpu_has_msa) {
		c->msa_id = FUNC3();
		FUNC1(c->msa_id & MSA_IR_WRPF,
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
		FUNC16(c);

	FUNC15(c);

#ifdef CONFIG_64BIT
	if (cpu == 0)
		__ua_limit = ~((1ull << cpu_vmbits) - 1);
#endif
}