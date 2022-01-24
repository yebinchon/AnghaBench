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
 int /*<<< orphan*/  SPRN_TCR ; 
 unsigned long TCR_DIE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned int mask)
{
	unsigned long tcr_save;

	/* disable decrement interrupt */
	tcr_save = FUNC1(SPRN_TCR);
	FUNC2(SPRN_TCR, tcr_save & ~TCR_DIE);

	/* go to sleep state */
	FUNC0(mask);

	/* restore decrement interrupt */
	FUNC2(SPRN_TCR, tcr_save);
}