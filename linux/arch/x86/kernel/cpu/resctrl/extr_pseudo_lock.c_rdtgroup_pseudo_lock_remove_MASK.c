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
struct rdtgroup {scalar_t__ mode; struct pseudo_lock_region* plr; int /*<<< orphan*/  closid; } ;
struct pseudo_lock_region {int /*<<< orphan*/  minor; int /*<<< orphan*/  debugfs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pseudo_lock_class ; 
 int /*<<< orphan*/  FUNC4 (struct pseudo_lock_region*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdtgroup*) ; 
 int /*<<< orphan*/  pseudo_lock_major ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct rdtgroup *rdtgrp)
{
	struct pseudo_lock_region *plr = rdtgrp->plr;

	if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
		/*
		 * Default group cannot be a pseudo-locked region so we can
		 * free closid here.
		 */
		FUNC1(rdtgrp->closid);
		goto free;
	}

	FUNC4(plr);
	FUNC2(rdtgrp->plr->debugfs_dir);
	FUNC3(pseudo_lock_class, FUNC0(pseudo_lock_major, plr->minor));
	FUNC6(plr->minor);

free:
	FUNC5(rdtgrp);
}