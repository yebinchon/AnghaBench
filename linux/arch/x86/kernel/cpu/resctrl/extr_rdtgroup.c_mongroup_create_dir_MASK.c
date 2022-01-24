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
struct rdtgroup {int dummy; } ;
struct kernfs_node {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC3 (struct kernfs_node*,char*,int /*<<< orphan*/ ,struct rdtgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 
 int FUNC6 (struct kernfs_node*) ; 

__attribute__((used)) static int
FUNC7(struct kernfs_node *parent_kn, struct rdtgroup *prgrp,
		    char *name, struct kernfs_node **dest_kn)
{
	struct kernfs_node *kn;
	int ret;

	/* create the directory */
	kn = FUNC3(parent_kn, name, parent_kn->mode, prgrp);
	if (FUNC0(kn))
		return FUNC1(kn);

	if (dest_kn)
		*dest_kn = kn;

	/*
	 * This extra ref will be put in kernfs_remove() and guarantees
	 * that @rdtgrp->kn is always accessible.
	 */
	FUNC4(kn);

	ret = FUNC6(kn);
	if (ret)
		goto out_destroy;

	FUNC2(kn);

	return 0;

out_destroy:
	FUNC5(kn);
	return ret;
}