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
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  TAINT_MACHINE_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct pt_regs *regs, long error_code)
{
	FUNC1(regs);

	FUNC3("CPU0: Machine Check Exception.\n");
	FUNC0(TAINT_MACHINE_CHECK, LOCKDEP_NOW_UNRELIABLE);

	FUNC2(regs);
}