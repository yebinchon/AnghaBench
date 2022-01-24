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
struct rdtgroup {scalar_t__ type; scalar_t__ mode; } ;
struct kernfs_node {int /*<<< orphan*/  name; struct kernfs_node* parent; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_2__ {struct kernfs_node* kn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RDTCTRL_GROUP ; 
 scalar_t__ RDTMON_GROUP ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kernfs_node*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kernfs_node*,struct rdtgroup*) ; 
 TYPE_1__ rdtgroup_default ; 
 struct rdtgroup* FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 int FUNC5 (struct kernfs_node*,struct rdtgroup*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kernfs_node*,struct rdtgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct kernfs_node *kn)
{
	struct kernfs_node *parent_kn = kn->parent;
	struct rdtgroup *rdtgrp;
	cpumask_var_t tmpmask;
	int ret = 0;

	if (!FUNC7(&tmpmask, GFP_KERNEL))
		return -ENOMEM;

	rdtgrp = FUNC3(kn);
	if (!rdtgrp) {
		ret = -EPERM;
		goto out;
	}

	/*
	 * If the rdtgroup is a ctrl_mon group and parent directory
	 * is the root directory, remove the ctrl_mon group.
	 *
	 * If the rdtgroup is a mon group and parent directory
	 * is a valid "mon_groups" directory, remove the mon group.
	 */
	if (rdtgrp->type == RDTCTRL_GROUP && parent_kn == rdtgroup_default.kn) {
		if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP ||
		    rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED) {
			ret = FUNC2(kn, rdtgrp);
		} else {
			ret = FUNC5(kn, rdtgrp, tmpmask);
		}
	} else if (rdtgrp->type == RDTMON_GROUP &&
		 FUNC1(parent_kn, kn->name)) {
		ret = FUNC6(kn, rdtgrp, tmpmask);
	} else {
		ret = -EPERM;
	}

out:
	FUNC4(kn);
	FUNC0(tmpmask);
	return ret;
}