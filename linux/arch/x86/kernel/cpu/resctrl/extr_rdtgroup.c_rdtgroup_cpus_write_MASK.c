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
struct rdtgroup {scalar_t__ mode; scalar_t__ type; } ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int ENOENT ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RDTCTRL_GROUP ; 
 scalar_t__ RDTMON_GROUP ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rdtgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rdtgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct rdtgroup* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC13(struct kernfs_open_file *of,
				   char *buf, size_t nbytes, loff_t off)
{
	cpumask_var_t tmpmask, newmask, tmpmask1;
	struct rdtgroup *rdtgrp;
	int ret;

	if (!buf)
		return -EINVAL;

	if (!FUNC12(&tmpmask, GFP_KERNEL))
		return -ENOMEM;
	if (!FUNC12(&newmask, GFP_KERNEL)) {
		FUNC6(tmpmask);
		return -ENOMEM;
	}
	if (!FUNC12(&tmpmask1, GFP_KERNEL)) {
		FUNC6(tmpmask);
		FUNC6(newmask);
		return -ENOMEM;
	}

	rdtgrp = FUNC10(of->kn);
	FUNC8();
	if (!rdtgrp) {
		ret = -ENOENT;
		FUNC9("Directory was removed\n");
		goto unlock;
	}

	if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED ||
	    rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
		ret = -EINVAL;
		FUNC9("Pseudo-locking in progress\n");
		goto unlock;
	}

	if (FUNC7(of))
		ret = FUNC0(buf, newmask);
	else
		ret = FUNC2(buf, newmask);

	if (ret) {
		FUNC9("Bad CPU list/mask\n");
		goto unlock;
	}

	/* check that user didn't specify any offline cpus */
	FUNC1(tmpmask, newmask, cpu_online_mask);
	if (FUNC3(tmpmask)) {
		ret = -EINVAL;
		FUNC9("Can only assign online CPUs\n");
		goto unlock;
	}

	if (rdtgrp->type == RDTCTRL_GROUP)
		ret = FUNC4(rdtgrp, newmask, tmpmask, tmpmask1);
	else if (rdtgrp->type == RDTMON_GROUP)
		ret = FUNC5(rdtgrp, newmask, tmpmask);
	else
		ret = -EINVAL;

unlock:
	FUNC11(of->kn);
	FUNC6(tmpmask);
	FUNC6(newmask);
	FUNC6(tmpmask1);

	return ret ?: nbytes;
}