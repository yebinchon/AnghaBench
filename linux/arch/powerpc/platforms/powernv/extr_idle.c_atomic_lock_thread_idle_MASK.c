#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long idle_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_PNV_CORE_IDLE_LOCK_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 TYPE_1__** paca_ptrs ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(void)
{
	int cpu = FUNC2();
	int first = FUNC1(cpu);
	unsigned long *state = &paca_ptrs[first]->idle_state;

	while (FUNC4(FUNC3(NR_PNV_CORE_IDLE_LOCK_BIT, state)))
		FUNC0();
}