#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int cache_levels ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 TYPE_1__* cp15_regs ; 
 TYPE_1__* invariant_cp15 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC4(void)
{
	unsigned int i;

	/* Make sure tables are unique and in order. */
	FUNC1(FUNC2(cp15_regs, FUNC0(cp15_regs)));
	FUNC1(FUNC2(invariant_cp15, FUNC0(invariant_cp15)));

	/* We abuse the reset function to overwrite the table itself. */
	for (i = 0; i < FUNC0(invariant_cp15); i++)
		invariant_cp15[i].reset(NULL, &invariant_cp15[i]);

	/*
	 * CLIDR format is awkward, so clean it up.  See ARM B4.1.20:
	 *
	 *   If software reads the Cache Type fields from Ctype1
	 *   upwards, once it has seen a value of 0b000, no caches
	 *   exist at further-out levels of the hierarchy. So, for
	 *   example, if Ctype3 is the first Cache Type field with a
	 *   value of 0b000, the values of Ctype4 to Ctype7 must be
	 *   ignored.
	 */
	asm volatile("mrc p15, 1, %0, c0, c0, 1" : "=r" (cache_levels));
	for (i = 0; i < 7; i++)
		if (((cache_levels >> (i*3)) & 7) == 0)
			break;
	/* Clear all higher bits. */
	cache_levels &= (1 << (i*3))-1;
}