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
struct sibling_subcore_state {int dummy; } ;
struct TYPE_2__ {struct sibling_subcore_state* sibling_subcore_state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 struct sibling_subcore_state* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__** paca_ptrs ; 
 int threads_per_core ; 

__attribute__((used)) static int FUNC3(void)
{
	int i, j;
	int nr_cores = FUNC0();
	struct sibling_subcore_state *sibling_subcore_state;

	for (i = 0; i < nr_cores; i++) {
		int first_cpu = i * threads_per_core;
		int node = FUNC1(first_cpu);

		/* Ignore if it is already allocated. */
		if (paca_ptrs[first_cpu]->sibling_subcore_state)
			continue;

		sibling_subcore_state =
			FUNC2(sizeof(struct sibling_subcore_state),
							GFP_KERNEL, node);
		if (!sibling_subcore_state)
			return -ENOMEM;


		for (j = 0; j < threads_per_core; j++) {
			int cpu = first_cpu + j;

			paca_ptrs[cpu]->sibling_subcore_state =
						sibling_subcore_state;
		}
	}
	return 0;
}