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
struct mce {int inject_flags; } ;

/* Variables and functions */
 int MCJ_EXCEPTION ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  injectm ; 
 int /*<<< orphan*/  mce_inject_cpumask ; 
 int /*<<< orphan*/  FUNC2 (struct mce*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 struct mce* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *info)
{
	int cpu = FUNC3();
	struct mce *m = FUNC4(&injectm);

	if (FUNC1(cpu, mce_inject_cpumask) &&
			m->inject_flags & MCJ_EXCEPTION) {
		FUNC0(cpu, mce_inject_cpumask);
		FUNC2(m, NULL);
	}
}