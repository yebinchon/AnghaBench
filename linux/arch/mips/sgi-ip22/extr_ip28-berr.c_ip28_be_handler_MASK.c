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

/* Variables and functions */
 int MIPS_BE_FIXUP ; 
 int /*<<< orphan*/  count_be_handler ; 
 int /*<<< orphan*/  count_be_is_fixup ; 
 int FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct pt_regs *regs, int is_fixup)
{
	/*
	 * We arrive here only in the unusual case of do_be() invocation,
	 * i.e. by a bus error exception without a bus error interrupt.
	 */
	if (is_fixup) {
		count_be_is_fixup++;
		FUNC1();
		return MIPS_BE_FIXUP;
	}
	count_be_handler++;
	return FUNC0(regs);
}