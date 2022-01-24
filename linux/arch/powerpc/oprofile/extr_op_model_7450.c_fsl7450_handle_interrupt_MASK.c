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
struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;

/* Variables and functions */
 int MSR_PMM ; 
 int /*<<< orphan*/  SPRN_SIAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int num_pmcs ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,struct pt_regs*,int,int) ; 
 scalar_t__ oprofile_running ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * reset_value ; 

__attribute__((used)) static void FUNC8(struct pt_regs *regs,
				    struct op_counter_config *ctr)
{
	unsigned long pc;
	int is_kernel;
	int val;
	int i;

	/* set the PMM bit (see comment below) */
	FUNC5(FUNC3() | MSR_PMM);

	pc = FUNC4(SPRN_SIAR);
	is_kernel = FUNC2(pc);

	for (i = 0; i < num_pmcs; ++i) {
		val = FUNC0(i);
		if (val < 0) {
			if (oprofile_running && ctr[i].enabled) {
				FUNC6(pc, regs, i, is_kernel);
				FUNC1(i, reset_value[i]);
			} else {
				FUNC1(i, 0);
			}
		}
	}

	/* The freeze bit was set by the interrupt. */
	/* Clear the freeze bit, and reenable the interrupt.
	 * The counters won't actually start until the rfi clears
	 * the PM/M bit */
	FUNC7();
}