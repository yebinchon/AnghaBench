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
struct pt_regs {unsigned long nip; } ;
struct op_counter_config {scalar_t__ enabled; } ;

/* Variables and functions */
 int MSR_PMM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int num_counters ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,struct pt_regs*,int,int) ; 
 scalar_t__ oprofile_running ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * reset_value ; 

__attribute__((used)) static void FUNC7(struct pt_regs *regs,
				    struct op_counter_config *ctr)
{
	unsigned long pc;
	int is_kernel;
	int val;
	int i;

	pc = regs->nip;
	is_kernel = FUNC2(pc);

	for (i = 0; i < num_counters; ++i) {
		val = FUNC0(i);
		if (val < 0) {
			if (oprofile_running && ctr[i].enabled) {
				FUNC5(pc, regs, i, is_kernel);
				FUNC1(i, reset_value[i]);
			} else {
				FUNC1(i, 0);
			}
		}
	}

	/* The freeze bit was set by the interrupt. */
	/* Clear the freeze bit, and reenable the interrupt.  The
	 * counters won't actually start until the rfi clears the PMM
	 * bit.  The PMM bit should not be set until after the interrupt
	 * is cleared to avoid it getting lost in some hypervisor
	 * environments.
	 */
	FUNC4(FUNC3() | MSR_PMM);
	FUNC6(1);
}