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
struct rdtgroup {int flags; scalar_t__ mode; int /*<<< orphan*/  kn; int /*<<< orphan*/  waitcount; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int RDT_DELETED ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ; 
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rdtgroup* FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct rdtgroup*) ; 

void FUNC7(struct kernfs_node *kn)
{
	struct rdtgroup *rdtgrp = FUNC2(kn);

	if (!rdtgrp)
		return;

	FUNC5(&rdtgroup_mutex);

	if (FUNC0(&rdtgrp->waitcount) &&
	    (rdtgrp->flags & RDT_DELETED)) {
		if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP ||
		    rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED)
			FUNC6(rdtgrp);
		FUNC3(kn);
		FUNC1(rdtgrp->kn);
		FUNC4(rdtgrp);
	} else {
		FUNC3(kn);
	}
}