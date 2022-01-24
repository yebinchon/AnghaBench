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

/* Variables and functions */
 int EXT_SRAM_ADDRESS ; 
 int FLASH_ADDRESS ; 
 int /*<<< orphan*/  MCFGPIO_PAR_CS ; 
 int /*<<< orphan*/  MCF_FBCS0_CSAR ; 
 int /*<<< orphan*/  MCF_FBCS0_CSCR ; 
 int /*<<< orphan*/  MCF_FBCS0_CSMR ; 
 int /*<<< orphan*/  MCF_FBCS1_CSAR ; 
 int /*<<< orphan*/  MCF_FBCS1_CSCR ; 
 int /*<<< orphan*/  MCF_FBCS1_CSMR ; 
 int MCF_FBCS_CSCR_AA ; 
 int MCF_FBCS_CSCR_BEM ; 
 int MCF_FBCS_CSCR_PS_16 ; 
 int MCF_FBCS_CSCR_SBM ; 
 int FUNC0 (int) ; 
 int MCF_FBCS_CSMR_BAM_2M ; 
 int MCF_FBCS_CSMR_BAM_32M ; 
 int MCF_FBCS_CSMR_BAM_512K ; 
 int MCF_FBCS_CSMR_V ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(void)
{
	FUNC1(0x3E, MCFGPIO_PAR_CS);

	/* Latch chip select */
	FUNC2(0x10080000, MCF_FBCS1_CSAR);

	FUNC2(0x002A3780, MCF_FBCS1_CSCR);
	FUNC2(MCF_FBCS_CSMR_BAM_2M | MCF_FBCS_CSMR_V, MCF_FBCS1_CSMR);

	/* Initialize latch to drive signals to inactive states */
	FUNC3(0xffff, 0x10080000);

	/* External SRAM */
	FUNC2(EXT_SRAM_ADDRESS, MCF_FBCS1_CSAR);
	FUNC2(MCF_FBCS_CSCR_PS_16 |
		MCF_FBCS_CSCR_AA |
		MCF_FBCS_CSCR_SBM |
		FUNC0(1),
		MCF_FBCS1_CSCR);
	FUNC2(MCF_FBCS_CSMR_BAM_512K | MCF_FBCS_CSMR_V, MCF_FBCS1_CSMR);

	/* Boot Flash connected to FBCS0 */
	FUNC2(FLASH_ADDRESS, MCF_FBCS0_CSAR);
	FUNC2(MCF_FBCS_CSCR_PS_16 |
		MCF_FBCS_CSCR_BEM |
		MCF_FBCS_CSCR_AA |
		MCF_FBCS_CSCR_SBM |
		FUNC0(7),
		MCF_FBCS0_CSCR);
	FUNC2(MCF_FBCS_CSMR_BAM_32M | MCF_FBCS_CSMR_V, MCF_FBCS0_CSMR);
}