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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 TYPE_1__** paca_ptrs ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	int cpu = FUNC2();
	int first = FUNC0(cpu);
	int thread_nr = FUNC1(cpu);
	unsigned long *state = &paca_ptrs[first]->idle_state;

	FUNC3(thread_nr, state);
}