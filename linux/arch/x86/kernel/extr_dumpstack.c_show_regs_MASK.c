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
 int /*<<< orphan*/  KERN_DEFAULT ; 
 int /*<<< orphan*/  SHOW_REGS_ALL ; 
 int /*<<< orphan*/  SHOW_REGS_USER ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

void FUNC4(struct pt_regs *regs)
{
	FUNC1(KERN_DEFAULT);

	FUNC0(regs, FUNC3(regs) ? SHOW_REGS_USER : SHOW_REGS_ALL);

	/*
	 * When in-kernel, we also print out the stack at the time of the fault..
	 */
	if (!FUNC3(regs))
		FUNC2(current, regs, NULL, KERN_DEFAULT);
}