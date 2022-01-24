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
 int /*<<< orphan*/  DIE_NMIWATCHDOG ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(const char *str, struct pt_regs *regs, int do_panic)
{
	int this_cpu = FUNC4();

	if (FUNC1(DIE_NMIWATCHDOG, str, regs, 0,
		       FUNC3(regs), SIGINT) == NOTIFY_STOP)
		return;

	if (do_panic || panic_on_oops)
		FUNC2("Watchdog detected hard LOCKUP on cpu %d", this_cpu);
	else
		FUNC0(1, "Watchdog detected hard LOCKUP on cpu %d", this_cpu);
}