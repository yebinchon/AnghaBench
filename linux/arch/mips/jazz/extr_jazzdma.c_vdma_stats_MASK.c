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
 scalar_t__ JAZZ_R4030_CHNL_ENABLE ; 
 scalar_t__ JAZZ_R4030_CHNL_MODE ; 
 scalar_t__ JAZZ_R4030_CONFIG ; 
 scalar_t__ JAZZ_R4030_I386_ERROR ; 
 scalar_t__ JAZZ_R4030_INV_ADDR ; 
 scalar_t__ JAZZ_R4030_IRQ_SOURCE ; 
 scalar_t__ JAZZ_R4030_M_FAIL_ADDR ; 
 scalar_t__ JAZZ_R4030_R_FAIL_ADDR ; 
 scalar_t__ JAZZ_R4030_TRSTBL_BASE ; 
 scalar_t__ JAZZ_R4030_TRSTBL_LIM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

void FUNC2(void)
{
	int i;

	FUNC0("vdma_stats: CONFIG: %08x\n",
	       FUNC1(JAZZ_R4030_CONFIG));
	FUNC0("R4030 translation table base: %08x\n",
	       FUNC1(JAZZ_R4030_TRSTBL_BASE));
	FUNC0("R4030 translation table limit: %08x\n",
	       FUNC1(JAZZ_R4030_TRSTBL_LIM));
	FUNC0("vdma_stats: INV_ADDR: %08x\n",
	       FUNC1(JAZZ_R4030_INV_ADDR));
	FUNC0("vdma_stats: R_FAIL_ADDR: %08x\n",
	       FUNC1(JAZZ_R4030_R_FAIL_ADDR));
	FUNC0("vdma_stats: M_FAIL_ADDR: %08x\n",
	       FUNC1(JAZZ_R4030_M_FAIL_ADDR));
	FUNC0("vdma_stats: IRQ_SOURCE: %08x\n",
	       FUNC1(JAZZ_R4030_IRQ_SOURCE));
	FUNC0("vdma_stats: I386_ERROR: %08x\n",
	       FUNC1(JAZZ_R4030_I386_ERROR));
	FUNC0("vdma_chnl_modes:   ");
	for (i = 0; i < 8; i++)
		FUNC0("%04x ",
		       (unsigned) FUNC1(JAZZ_R4030_CHNL_MODE +
						   (i << 5)));
	FUNC0("\n");
	FUNC0("vdma_chnl_enables: ");
	for (i = 0; i < 8; i++)
		FUNC0("%04x ",
		       (unsigned) FUNC1(JAZZ_R4030_CHNL_ENABLE +
						   (i << 5)));
	FUNC0("\n");
}