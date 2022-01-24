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
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 TYPE_1__** paca_ptrs ; 
 int FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(void)
{
	int cpu = FUNC3();
	int first = FUNC1(cpu);
	int thread_nr = FUNC2(cpu);
	unsigned long *state = &paca_ptrs[first]->idle_state;

	FUNC0(thread_nr, state);
}