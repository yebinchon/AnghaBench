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
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * update_ref; int /*<<< orphan*/  dirty; int /*<<< orphan*/  initialized; } ;
struct notes_cache {TYPE_1__ tree; int /*<<< orphan*/  validity; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_REFS_QUIET_ON_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct object_id*) ; 

int FUNC4(struct notes_cache *c)
{
	struct object_id tree_oid, commit_oid;

	if (!c || !c->tree.initialized || !c->tree.update_ref ||
	    !*c->tree.update_ref)
		return -1;
	if (!c->tree.dirty)
		return 0;

	if (FUNC3(&c->tree, &tree_oid))
		return -1;
	if (FUNC0(c->validity, FUNC1(c->validity), &tree_oid, NULL,
			&commit_oid, NULL, NULL) < 0)
		return -1;
	if (FUNC2("update notes cache", c->tree.update_ref, &commit_oid,
		       NULL, 0, UPDATE_REFS_QUIET_ON_ERR) < 0)
		return -1;

	return 0;
}