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
struct cgroup_subsys_state {int dummy; } ;
struct blkcg {scalar_t__* cpd; int /*<<< orphan*/  all_blkcgs_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cpd_free_fn ) (scalar_t__) ;} ;

/* Variables and functions */
 int BLKCG_MAX_POLS ; 
 int /*<<< orphan*/  blkcg_pol_mutex ; 
 TYPE_1__** blkcg_policy ; 
 struct blkcg* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cgroup_subsys_state *css)
{
	struct blkcg *blkcg = FUNC0(css);
	int i;

	FUNC3(&blkcg_pol_mutex);

	FUNC2(&blkcg->all_blkcgs_node);

	for (i = 0; i < BLKCG_MAX_POLS; i++)
		if (blkcg->cpd[i])
			blkcg_policy[i]->cpd_free_fn(blkcg->cpd[i]);

	FUNC4(&blkcg_pol_mutex);

	FUNC1(blkcg);
}