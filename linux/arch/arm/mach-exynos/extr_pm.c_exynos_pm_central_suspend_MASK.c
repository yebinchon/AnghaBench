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
 unsigned long S5P_CENTRAL_LOWPWR_CFG ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_CONFIGURATION ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	unsigned long tmp;

	/* Setting Central Sequence Register for power down mode */
	tmp = FUNC0(S5P_CENTRAL_SEQ_CONFIGURATION);
	tmp &= ~S5P_CENTRAL_LOWPWR_CFG;
	FUNC1(tmp, S5P_CENTRAL_SEQ_CONFIGURATION);
}