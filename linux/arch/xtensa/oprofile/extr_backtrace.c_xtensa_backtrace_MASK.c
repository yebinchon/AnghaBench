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
 scalar_t__ FUNC0 (struct pt_regs* const) ; 
 int /*<<< orphan*/  xtensa_backtrace_cb ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs* const,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct pt_regs * const regs, unsigned int depth)
{
	if (FUNC0(regs))
		FUNC2(regs, depth, xtensa_backtrace_cb, NULL);
	else
		FUNC1(regs, depth, xtensa_backtrace_cb,
					xtensa_backtrace_cb, NULL);
}