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
 int /*<<< orphan*/  IMCR_CCFG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(unsigned int mode)
{
	unsigned int ccfg = FUNC0(IMCR_CCFG);

	/* Clear and set the L2MODE bits in CCFG */
	ccfg &= ~7;
	ccfg |= (mode & 7);
	FUNC1(IMCR_CCFG, ccfg);
	ccfg = FUNC0(IMCR_CCFG);
}