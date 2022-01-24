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
typedef  void* u32 ;
struct pvr_s {int dummy; } ;
struct device_node {int dummy; } ;
struct cpuinfo {void* use_instr; void* use_mult; void* use_fpu; int use_exc; int icache_line_length; int dcache_line_length; void* dcache_wb; int /*<<< orphan*/  ver_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  AREA_OPTIMISED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCACHE_ADDR_TAG_BITS ; 
 int /*<<< orphan*/  DCACHE_ALLOW_WR ; 
 int /*<<< orphan*/  DCACHE_BASEADDR ; 
 int /*<<< orphan*/  DCACHE_BYTE_SIZE ; 
 int /*<<< orphan*/  DCACHE_HIGHADDR ; 
 int /*<<< orphan*/  DEBUG_ENABLED ; 
 int /*<<< orphan*/  D_LMB ; 
 int /*<<< orphan*/  D_OPB ; 
 int /*<<< orphan*/  EDGE_IS_POSITIVE ; 
 int /*<<< orphan*/  ENDIAN ; 
 int /*<<< orphan*/  FSL_LINKS ; 
 int /*<<< orphan*/  ICACHE_ADDR_TAG_BITS ; 
 int /*<<< orphan*/  ICACHE_ALLOW_WR ; 
 int /*<<< orphan*/  ICACHE_BASEADDR ; 
 int /*<<< orphan*/  ICACHE_BYTE_SIZE ; 
 int /*<<< orphan*/  ICACHE_HIGHADDR ; 
 int /*<<< orphan*/  INTERRUPT_IS_EDGE ; 
 int /*<<< orphan*/  I_LMB ; 
 int /*<<< orphan*/  I_OPB ; 
 int /*<<< orphan*/  MMU_PRIVINS ; 
 int /*<<< orphan*/  NUMBER_OF_PC_BRK ; 
 int /*<<< orphan*/  NUMBER_OF_RD_ADDR_BRK ; 
 int /*<<< orphan*/  NUMBER_OF_WR_ADDR_BRK ; 
 int FUNC1 (struct pvr_s) ; 
 void* FUNC2 (struct pvr_s) ; 
 int FUNC3 (struct pvr_s) ; 
 int FUNC4 (struct pvr_s) ; 
 int FUNC5 (struct pvr_s) ; 
 int FUNC6 (struct pvr_s) ; 
 int FUNC7 (struct pvr_s) ; 
 int FUNC8 (struct pvr_s) ; 
 int FUNC9 (struct pvr_s) ; 
 int FUNC10 (struct pvr_s) ; 
 int FUNC11 (struct pvr_s) ; 
 int FUNC12 (struct pvr_s) ; 
 int FUNC13 (struct pvr_s) ; 
 int FUNC14 (struct pvr_s) ; 
 int FUNC15 (struct pvr_s) ; 
 int FUNC16 (struct pvr_s) ; 
 int FUNC17 (struct pvr_s) ; 
 int FUNC18 (struct pvr_s) ; 
 int FUNC19 (struct pvr_s) ; 
 int /*<<< orphan*/  TARGET_FAMILY ; 
 int /*<<< orphan*/  USER1 ; 
 int /*<<< orphan*/  USER2 ; 
 int /*<<< orphan*/  USE_DCACHE ; 
 int /*<<< orphan*/  USE_ICACHE ; 
 int /*<<< orphan*/  USE_MMU ; 
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  area_optimised ; 
 int /*<<< orphan*/  dcache_base ; 
 int /*<<< orphan*/  dcache_high ; 
 int /*<<< orphan*/  dcache_size ; 
 int /*<<< orphan*/  dcache_tagbits ; 
 int /*<<< orphan*/  dcache_write ; 
 int /*<<< orphan*/  endian ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  fpga_family_code ; 
 int /*<<< orphan*/  FUNC21 (struct pvr_s*) ; 
 int /*<<< orphan*/  hw_debug ; 
 int /*<<< orphan*/  icache_base ; 
 int /*<<< orphan*/  icache_high ; 
 int /*<<< orphan*/  icache_size ; 
 int /*<<< orphan*/  icache_tagbits ; 
 int /*<<< orphan*/  icache_write ; 
 int /*<<< orphan*/  irq_edge ; 
 int /*<<< orphan*/  irq_positive ; 
 int /*<<< orphan*/  mmu ; 
 int /*<<< orphan*/  mmu_privins ; 
 int /*<<< orphan*/  num_fsl ; 
 int /*<<< orphan*/  num_pc_brk ; 
 int /*<<< orphan*/  num_rd_brk ; 
 int /*<<< orphan*/  num_wr_brk ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  pvr_user1 ; 
 int /*<<< orphan*/  pvr_user2 ; 
 int /*<<< orphan*/  use_dcache ; 
 int /*<<< orphan*/  use_dlmb ; 
 int /*<<< orphan*/  use_dopb ; 
 int /*<<< orphan*/  use_icache ; 
 int /*<<< orphan*/  use_ilmb ; 
 int /*<<< orphan*/  use_iopb ; 
 int /*<<< orphan*/  ver_code ; 

void FUNC23(struct cpuinfo *ci, struct device_node *cpu)
{
	struct pvr_s pvr;
	u32 temp; /* for saving temp value */
	FUNC21(&pvr);

	FUNC0(ver_code, VERSION);
	if (!ci->ver_code) {
		FUNC22("ERROR: MB has broken PVR regs -> use DTS setting\n");
		return;
	}

	temp = FUNC12(pvr) | FUNC17(pvr) |
		FUNC19(pvr) | FUNC13(pvr);
	if (ci->use_instr != temp)
		FUNC20("BARREL, MSR, PCMP or DIV");
	ci->use_instr = temp;

	temp = FUNC16(pvr) | FUNC18(pvr);
	if (ci->use_mult != temp)
		FUNC20("HW_MUL");
	ci->use_mult = temp;

	temp = FUNC14(pvr) | FUNC15(pvr);
	if (ci->use_fpu != temp)
		FUNC20("HW_FPU");
	ci->use_fpu = temp;

	ci->use_exc = FUNC10(pvr) |
			FUNC11(pvr) |
			FUNC8(pvr) |
			FUNC9(pvr) |
			FUNC4(pvr) |
			FUNC3(pvr) |
			FUNC5(pvr) |
			FUNC6(pvr);

	FUNC0(pvr_user1, USER1);
	FUNC0(pvr_user2, USER2);

	FUNC0(mmu, USE_MMU);
	FUNC0(mmu_privins, MMU_PRIVINS);
	FUNC0(endian, ENDIAN);

	FUNC0(use_icache, USE_ICACHE);
	FUNC0(icache_tagbits, ICACHE_ADDR_TAG_BITS);
	FUNC0(icache_write, ICACHE_ALLOW_WR);
	ci->icache_line_length = FUNC7(pvr) << 2;
	FUNC0(icache_size, ICACHE_BYTE_SIZE);
	FUNC0(icache_base, ICACHE_BASEADDR);
	FUNC0(icache_high, ICACHE_HIGHADDR);

	FUNC0(use_dcache, USE_DCACHE);
	FUNC0(dcache_tagbits, DCACHE_ADDR_TAG_BITS);
	FUNC0(dcache_write, DCACHE_ALLOW_WR);
	ci->dcache_line_length = FUNC1(pvr) << 2;
	FUNC0(dcache_size, DCACHE_BYTE_SIZE);
	FUNC0(dcache_base, DCACHE_BASEADDR);
	FUNC0(dcache_high, DCACHE_HIGHADDR);

	temp = FUNC2(pvr);
	if (ci->dcache_wb != temp)
		FUNC20("DCACHE WB");
	ci->dcache_wb = temp;

	FUNC0(use_dopb, D_OPB);
	FUNC0(use_iopb, I_OPB);
	FUNC0(use_dlmb, D_LMB);
	FUNC0(use_ilmb, I_LMB);
	FUNC0(num_fsl, FSL_LINKS);

	FUNC0(irq_edge, INTERRUPT_IS_EDGE);
	FUNC0(irq_positive, EDGE_IS_POSITIVE);

	FUNC0(area_optimised, AREA_OPTIMISED);

	FUNC0(hw_debug, DEBUG_ENABLED);
	FUNC0(num_pc_brk, NUMBER_OF_PC_BRK);
	FUNC0(num_rd_brk, NUMBER_OF_RD_ADDR_BRK);
	FUNC0(num_wr_brk, NUMBER_OF_WR_ADDR_BRK);

	FUNC0(fpga_family_code, TARGET_FAMILY);
}