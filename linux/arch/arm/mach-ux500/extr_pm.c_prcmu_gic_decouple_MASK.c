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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PRCM_A9_MASK_REQ ; 
 int PRCM_A9_MASK_REQ_PRCM_A9_MASK_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	u32 val = FUNC0(PRCM_A9_MASK_REQ);

	/* Set bit 0 register value to 1 */
	FUNC2(val | PRCM_A9_MASK_REQ_PRCM_A9_MASK_REQ,
	       PRCM_A9_MASK_REQ);

	/* Make sure the register is updated */
	FUNC0(PRCM_A9_MASK_REQ);

	/* Wait a few cycles for the gic mask completion */
	FUNC1(1);

	return 0;
}