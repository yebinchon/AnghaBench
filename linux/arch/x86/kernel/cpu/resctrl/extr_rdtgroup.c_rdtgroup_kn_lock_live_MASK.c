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
struct rdtgroup {int flags; int /*<<< orphan*/  waitcount; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int RDT_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 struct rdtgroup* FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 

struct rdtgroup *FUNC4(struct kernfs_node *kn)
{
	struct rdtgroup *rdtgrp = FUNC2(kn);

	if (!rdtgrp)
		return NULL;

	FUNC0(&rdtgrp->waitcount);
	FUNC1(kn);

	FUNC3(&rdtgroup_mutex);

	/* Was this group deleted while we waited? */
	if (rdtgrp->flags & RDT_DELETED)
		return NULL;

	return rdtgrp;
}