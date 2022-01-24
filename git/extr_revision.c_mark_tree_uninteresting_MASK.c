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
struct object {int flags; } ;
struct tree {struct object object; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct repository*,struct tree*) ; 

void FUNC1(struct repository *r, struct tree *tree)
{
	struct object *obj;

	if (!tree)
		return;

	obj = &tree->object;
	if (obj->flags & UNINTERESTING)
		return;
	obj->flags |= UNINTERESTING;
	FUNC0(r, tree);
}