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
struct spin_wait {int node_id; } ;

/* Variables and functions */
 int _Q_TAIL_CPU_OFFSET ; 
 int _Q_TAIL_IDX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct spin_wait*,int /*<<< orphan*/ ,int) ; 
 struct spin_wait* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * spin_wait ; 

void FUNC2(int cpu)
{
	struct spin_wait *node;
	int ix;

	node = FUNC1(&spin_wait[0], cpu);
	for (ix = 0; ix < 4; ix++, node++) {
		FUNC0(node, 0, sizeof(*node));
		node->node_id = ((cpu + 1) << _Q_TAIL_CPU_OFFSET) +
			(ix << _Q_TAIL_IDX_OFFSET);
	}
}