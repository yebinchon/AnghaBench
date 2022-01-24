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
struct cgroup_subsys_state {int dummy; } ;
struct blkcg_policy_data {int plid; struct blkcg* blkcg; } ;
struct blkcg_policy {int /*<<< orphan*/  (* cpd_free_fn ) (struct blkcg_policy_data*) ;int /*<<< orphan*/  (* cpd_init_fn ) (struct blkcg_policy_data*) ;struct blkcg_policy_data* (* cpd_alloc_fn ) (int /*<<< orphan*/ ) ;} ;
struct blkcg {struct blkcg_policy_data** cpd; struct cgroup_subsys_state css; int /*<<< orphan*/  all_blkcgs_node; int /*<<< orphan*/  cgwb_refcnt; int /*<<< orphan*/  cgwb_list; int /*<<< orphan*/  blkg_list; int /*<<< orphan*/  blkg_tree; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BLKCG_MAX_POLS ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cgroup_subsys_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  all_blkcgs ; 
 int /*<<< orphan*/  blkcg_pol_mutex ; 
 struct blkcg_policy** blkcg_policy ; 
 struct blkcg blkcg_root ; 
 int /*<<< orphan*/  FUNC4 (struct blkcg*) ; 
 struct blkcg* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct blkcg_policy_data* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct blkcg_policy_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct blkcg_policy_data*) ; 

__attribute__((used)) static struct cgroup_subsys_state *
FUNC14(struct cgroup_subsys_state *parent_css)
{
	struct blkcg *blkcg;
	struct cgroup_subsys_state *ret;
	int i;

	FUNC7(&blkcg_pol_mutex);

	if (!parent_css) {
		blkcg = &blkcg_root;
	} else {
		blkcg = FUNC5(sizeof(*blkcg), GFP_KERNEL);
		if (!blkcg) {
			ret = FUNC0(-ENOMEM);
			goto unlock;
		}
	}

	for (i = 0; i < BLKCG_MAX_POLS ; i++) {
		struct blkcg_policy *pol = blkcg_policy[i];
		struct blkcg_policy_data *cpd;

		/*
		 * If the policy hasn't been attached yet, wait for it
		 * to be attached before doing anything else. Otherwise,
		 * check if the policy requires any specific per-cgroup
		 * data: if it does, allocate and initialize it.
		 */
		if (!pol || !pol->cpd_alloc_fn)
			continue;

		cpd = pol->cpd_alloc_fn(GFP_KERNEL);
		if (!cpd) {
			ret = FUNC0(-ENOMEM);
			goto free_pd_blkcg;
		}
		blkcg->cpd[i] = cpd;
		cpd->blkcg = blkcg;
		cpd->plid = i;
		if (pol->cpd_init_fn)
			pol->cpd_init_fn(cpd);
	}

	FUNC10(&blkcg->lock);
	FUNC3(&blkcg->blkg_tree, GFP_NOWAIT | __GFP_NOWARN);
	FUNC1(&blkcg->blkg_list);
#ifdef CONFIG_CGROUP_WRITEBACK
	INIT_LIST_HEAD(&blkcg->cgwb_list);
	refcount_set(&blkcg->cgwb_refcnt, 1);
#endif
	FUNC6(&blkcg->all_blkcgs_node, &all_blkcgs);

	FUNC8(&blkcg_pol_mutex);
	return &blkcg->css;

free_pd_blkcg:
	for (i--; i >= 0; i--)
		if (blkcg->cpd[i])
			blkcg_policy[i]->cpd_free_fn(blkcg->cpd[i]);

	if (blkcg != &blkcg_root)
		FUNC4(blkcg);
unlock:
	FUNC8(&blkcg_pol_mutex);
	return ret;
}