#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sys_reg_desc {unsigned int val; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int cache_levels ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 TYPE_1__* cp14_64_regs ; 
 TYPE_1__* cp14_regs ; 
 TYPE_1__* cp15_64_regs ; 
 TYPE_1__* cp15_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sys_reg_desc*) ; 
 TYPE_1__* invariant_sys_regs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* sys_reg_descs ; 

void FUNC5(void)
{
	unsigned int i;
	struct sys_reg_desc clidr;

	/* Make sure tables are unique and in order. */
	FUNC1(FUNC2(sys_reg_descs, FUNC0(sys_reg_descs)));
	FUNC1(FUNC2(cp14_regs, FUNC0(cp14_regs)));
	FUNC1(FUNC2(cp14_64_regs, FUNC0(cp14_64_regs)));
	FUNC1(FUNC2(cp15_regs, FUNC0(cp15_regs)));
	FUNC1(FUNC2(cp15_64_regs, FUNC0(cp15_64_regs)));
	FUNC1(FUNC2(invariant_sys_regs, FUNC0(invariant_sys_regs)));

	/* We abuse the reset function to overwrite the table itself. */
	for (i = 0; i < FUNC0(invariant_sys_regs); i++)
		invariant_sys_regs[i].reset(NULL, &invariant_sys_regs[i]);

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
	FUNC3(NULL, &clidr); /* Ugly... */
	cache_levels = clidr.val;
	for (i = 0; i < 7; i++)
		if (((cache_levels >> (i*3)) & 7) == 0)
			break;
	/* Clear all higher bits. */
	cache_levels &= (1 << (i*3))-1;
}