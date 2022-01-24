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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DCRN_CW_BASE ; 
 scalar_t__ DCRN_CW_MCER0 ; 
 scalar_t__ DCRN_CW_MCER1 ; 
 scalar_t__ DCRN_DDR34_BASE ; 
 scalar_t__ DCRN_DDR34_CFGR0 ; 
 scalar_t__ DCRN_DDR34_CFGR1 ; 
 scalar_t__ DCRN_DDR34_CFGR2 ; 
 scalar_t__ DCRN_DDR34_CFGR3 ; 
 scalar_t__ DCRN_DDR34_ECCERR_ADDR_PORT0 ; 
 scalar_t__ DCRN_DDR34_ECCERR_COUNT_PORT0 ; 
 scalar_t__ DCRN_DDR34_ECCERR_PORT0 ; 
 scalar_t__ DCRN_DDR34_ECC_CHECK_PORT0 ; 
 scalar_t__ DCRN_DDR34_MCOPT1 ; 
 scalar_t__ DCRN_DDR34_MCOPT2 ; 
 scalar_t__ DCRN_DDR34_MCSTAT ; 
 scalar_t__ DCRN_DDR34_PHYSTAT ; 
 scalar_t__ DCRN_DDR34_SCRUB_CNTL ; 
 scalar_t__ DCRN_PLB6MCIF_BEARH ; 
 scalar_t__ DCRN_PLB6MCIF_BEARL ; 
 scalar_t__ DCRN_PLB6MCIF_BESR0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data) {
	FUNC2("DDR: Uncorrectable Error\n");
	FUNC2("MCSTAT:            0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_MCSTAT));
	FUNC2("MCOPT1:            0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_MCOPT1));
	FUNC2("MCOPT2:            0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_MCOPT2));
	FUNC2("PHYSTAT:           0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_PHYSTAT));
	FUNC2("CFGR0:             0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_CFGR0));
	FUNC2("CFGR1:             0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_CFGR1));
	FUNC2("CFGR2:             0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_CFGR2));
	FUNC2("CFGR3:             0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_CFGR3));
	FUNC2("SCRUB_CNTL:        0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_SCRUB_CNTL));
	FUNC2("ECCERR_PORT0:      0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_ECCERR_PORT0));
	FUNC2("ECCERR_ADDR_PORT0: 0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_ECCERR_ADDR_PORT0));
	FUNC2("ECCERR_CNT_PORT0:  0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_ECCERR_COUNT_PORT0));
	FUNC2("ECC_CHECK_PORT0:   0x%08x\n",
		FUNC0(DCRN_DDR34_BASE + DCRN_DDR34_ECC_CHECK_PORT0));
	FUNC2("MCER0:            0x%08x\n",
		FUNC0(DCRN_CW_BASE + DCRN_CW_MCER0));
	FUNC2("MCER1:            0x%08x\n",
		FUNC0(DCRN_CW_BASE + DCRN_CW_MCER1));
	FUNC2("BESR:             0x%08x\n",
		FUNC0(DCRN_PLB6MCIF_BESR0));
	FUNC2("BEARL:            0x%08x\n",
		FUNC0(DCRN_PLB6MCIF_BEARL));
	FUNC2("BEARH:            0x%08x\n",
		FUNC0(DCRN_PLB6MCIF_BEARH));
	FUNC1("DDR: Uncorrectable Error\n");
}