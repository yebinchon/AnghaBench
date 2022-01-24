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
typedef  unsigned long u64 ;
struct TYPE_2__ {unsigned long idle_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long PNV_CORE_IDLE_LOCK_BIT ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long,unsigned long) ; 
 int FUNC3 (int) ; 
 unsigned long FUNC4 (int) ; 
 TYPE_1__** paca_ptrs ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline void FUNC7(void)
{
	int cpu = FUNC5();
	int first = FUNC3(cpu);
	unsigned long thread = 1UL << FUNC4(cpu);
	unsigned long *state = &paca_ptrs[first]->idle_state;
	u64 s = FUNC1(*state);
	u64 new, tmp;

	FUNC0(!(s & PNV_CORE_IDLE_LOCK_BIT));
	FUNC0(s & thread);

again:
	new = (s | thread) & ~PNV_CORE_IDLE_LOCK_BIT;
	tmp = FUNC2(state, s, new);
	if (FUNC6(tmp != s)) {
		s = tmp;
		goto again;
	}
}