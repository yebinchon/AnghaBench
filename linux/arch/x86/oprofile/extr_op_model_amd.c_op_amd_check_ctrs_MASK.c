#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct pt_regs {int dummy; } ;
struct op_msrs {TYPE_1__* counters; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int OP_CTR_OVERFLOW ; 
 int num_counters ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs* const,struct op_msrs const* const) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs* const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* reset_value ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct pt_regs * const regs,
			     struct op_msrs const * const msrs)
{
	u64 val;
	int i;

	for (i = 0; i < num_counters; ++i) {
		int virt = FUNC1(i);
		if (!reset_value[virt])
			continue;
		FUNC3(msrs->counters[i].addr, val);
		/* bit is clear if overflowed: */
		if (val & OP_CTR_OVERFLOW)
			continue;
		FUNC2(regs, virt);
		FUNC4(msrs->counters[i].addr, -(u64)reset_value[virt]);
	}

	FUNC0(regs, msrs);

	/* See op_model_ppro.c */
	return 1;
}