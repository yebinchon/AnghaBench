#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct amd_nb {int nb_id; TYPE_1__* event_constraints; } ;
struct TYPE_4__ {int num_counters; } ;
struct TYPE_3__ {int weight; int /*<<< orphan*/  idxmsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct amd_nb* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ x86_pmu ; 

__attribute__((used)) static struct amd_nb *FUNC3(int cpu)
{
	struct amd_nb *nb;
	int i;

	nb = FUNC2(sizeof(struct amd_nb), GFP_KERNEL, FUNC1(cpu));
	if (!nb)
		return NULL;

	nb->nb_id = -1;

	/*
	 * initialize all possible NB constraints
	 */
	for (i = 0; i < x86_pmu.num_counters; i++) {
		FUNC0(i, nb->event_constraints[i].idxmsk);
		nb->event_constraints[i].weight = 1;
	}
	return nb;
}