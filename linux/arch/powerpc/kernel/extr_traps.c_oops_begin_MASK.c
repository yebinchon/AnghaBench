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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  die_nest_count ; 
 int die_owner ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  powermac ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int FUNC8 () ; 

__attribute__((used)) static unsigned long FUNC9(struct pt_regs *regs)
{
	int cpu;
	unsigned long flags;

	FUNC5();

	/* racy, but better than risking deadlock. */
	FUNC7(flags);
	cpu = FUNC8();
	if (!FUNC1(&die_lock)) {
		if (cpu == die_owner)
			/* nested oops. should stop eventually */;
		else
			FUNC0(&die_lock);
	}
	die_nest_count++;
	die_owner = cpu;
	FUNC3();
	FUNC2(1);
	if (FUNC4(powermac))
		FUNC6();
	return flags;
}