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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int u32 ;
struct rdtgroup {int closid; int /*<<< orphan*/  rdtgroup_list; struct kernfs_node* kn; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDTCTRL_GROUP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kernfs_node*,struct kernfs_node*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdtgroup**) ; 
 int /*<<< orphan*/  FUNC5 (struct rdtgroup*) ; 
 int FUNC6 (struct kernfs_node*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdt_all_groups ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ rdt_mon_capable ; 
 int FUNC8 (struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC9 (struct kernfs_node*) ; 

__attribute__((used)) static int FUNC10(struct kernfs_node *parent_kn,
				   struct kernfs_node *prgrp_kn,
				   const char *name, umode_t mode)
{
	struct rdtgroup *rdtgrp;
	struct kernfs_node *kn;
	u32 closid;
	int ret;

	ret = FUNC4(parent_kn, prgrp_kn, name, mode, RDTCTRL_GROUP,
				&rdtgrp);
	if (ret)
		return ret;

	kn = rdtgrp->kn;
	ret = FUNC0();
	if (ret < 0) {
		FUNC7("Out of CLOSIDs\n");
		goto out_common_fail;
	}
	closid = ret;
	ret = 0;

	rdtgrp->closid = closid;
	ret = FUNC8(rdtgrp);
	if (ret < 0)
		goto out_id_free;

	FUNC2(&rdtgrp->rdtgroup_list, &rdt_all_groups);

	if (rdt_mon_capable) {
		/*
		 * Create an empty mon_groups directory to hold the subset
		 * of tasks and cpus to monitor.
		 */
		ret = FUNC6(kn, NULL, "mon_groups", NULL);
		if (ret) {
			FUNC7("kernfs subdir error\n");
			goto out_del_list;
		}
	}

	goto out_unlock;

out_del_list:
	FUNC3(&rdtgrp->rdtgroup_list);
out_id_free:
	FUNC1(closid);
out_common_fail:
	FUNC5(rdtgrp);
out_unlock:
	FUNC9(prgrp_kn);
	return ret;
}