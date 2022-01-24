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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coupled_coherence ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(atomic_t *a, unsigned online)
{
	/*
	 * This function is effectively the same as
	 * cpuidle_coupled_parallel_barrier, which can't be used here since
	 * there's no cpuidle device.
	 */

	if (!coupled_coherence)
		return;

	FUNC5();
	FUNC0(a);

	while (FUNC2(a) < online)
		FUNC4();

	if (FUNC1(a) == online * 2) {
		FUNC3(a, 0);
		return;
	}

	while (FUNC2(a) > online)
		FUNC4();
}