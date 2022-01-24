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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int uint ;
struct TYPE_2__ {int rmid; int /*<<< orphan*/  mon_data_kn; int /*<<< orphan*/  crdtgrp_list; struct rdtgroup* parent; } ;
struct rdtgroup {scalar_t__ mode; int type; struct kernfs_node* kn; TYPE_1__ mon; } ;
struct kernfs_node {int dummy; } ;
typedef  enum rdt_group_type { ____Placeholder_rdt_group_type } rdt_group_type ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kernfs_node*) ; 
 int FUNC3 (struct kernfs_node*) ; 
 int RDTMON_GROUP ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ; 
 int RFTYPE_BASE ; 
 int RF_CTRLSHIFT ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC7 (struct kernfs_node*,char const*,int /*<<< orphan*/ ,struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC8 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct rdtgroup*) ; 
 struct rdtgroup* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct kernfs_node*,struct rdtgroup*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ rdt_mon_capable ; 
 int FUNC15 (struct kernfs_node*,int) ; 
 struct rdtgroup* FUNC16 (struct kernfs_node*) ; 
 int FUNC17 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct kernfs_node*) ; 

__attribute__((used)) static int FUNC19(struct kernfs_node *parent_kn,
			     struct kernfs_node *prgrp_kn,
			     const char *name, umode_t mode,
			     enum rdt_group_type rtype, struct rdtgroup **r)
{
	struct rdtgroup *prdtgrp, *rdtgrp;
	struct kernfs_node *kn;
	uint files = 0;
	int ret;

	prdtgrp = FUNC16(prgrp_kn);
	FUNC13();
	if (!prdtgrp) {
		ret = -ENODEV;
		FUNC14("Directory was removed\n");
		goto out_unlock;
	}

	if (rtype == RDTMON_GROUP &&
	    (prdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP ||
	     prdtgrp->mode == RDT_MODE_PSEUDO_LOCKED)) {
		ret = -EINVAL;
		FUNC14("Pseudo-locking in progress\n");
		goto out_unlock;
	}

	/* allocate the rdtgroup. */
	rdtgrp = FUNC11(sizeof(*rdtgrp), GFP_KERNEL);
	if (!rdtgrp) {
		ret = -ENOSPC;
		FUNC14("Kernel out of memory\n");
		goto out_unlock;
	}
	*r = rdtgrp;
	rdtgrp->mon.parent = prdtgrp;
	rdtgrp->type = rtype;
	FUNC1(&rdtgrp->mon.crdtgrp_list);

	/* kernfs creates the directory for rdtgrp */
	kn = FUNC7(parent_kn, name, mode, rdtgrp);
	if (FUNC2(kn)) {
		ret = FUNC3(kn);
		FUNC14("kernfs create error\n");
		goto out_free_rgrp;
	}
	rdtgrp->kn = kn;

	/*
	 * kernfs_remove() will drop the reference count on "kn" which
	 * will free it. But we still need it to stick around for the
	 * rdtgroup_kn_unlock(kn} call below. Take one extra reference
	 * here, which will be dropped inside rdtgroup_kn_unlock().
	 */
	FUNC8(kn);

	ret = FUNC17(kn);
	if (ret) {
		FUNC14("kernfs perm error\n");
		goto out_destroy;
	}

	files = RFTYPE_BASE | FUNC0(RF_CTRLSHIFT + rtype);
	ret = FUNC15(kn, files);
	if (ret) {
		FUNC14("kernfs fill error\n");
		goto out_destroy;
	}

	if (rdt_mon_capable) {
		ret = FUNC4();
		if (ret < 0) {
			FUNC14("Out of RMIDs\n");
			goto out_destroy;
		}
		rdtgrp->mon.rmid = ret;

		ret = FUNC12(kn, rdtgrp, &rdtgrp->mon.mon_data_kn);
		if (ret) {
			FUNC14("kernfs subdir error\n");
			goto out_idfree;
		}
	}
	FUNC6(kn);

	/*
	 * The caller unlocks the prgrp_kn upon success.
	 */
	return 0;

out_idfree:
	FUNC5(rdtgrp->mon.rmid);
out_destroy:
	FUNC9(rdtgrp->kn);
out_free_rgrp:
	FUNC10(rdtgrp);
out_unlock:
	FUNC18(prgrp_kn);
	return ret;
}