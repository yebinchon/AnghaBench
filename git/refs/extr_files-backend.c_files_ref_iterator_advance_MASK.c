#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ref_iterator {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; int /*<<< orphan*/  refname; } ;
struct files_ref_iterator {int flags; TYPE_2__* iter0; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; int /*<<< orphan*/  refname; } ;

/* Variables and functions */
 int DO_FOR_EACH_INCLUDE_BROKEN ; 
 int DO_FOR_EACH_PER_WORKTREE_ONLY ; 
 scalar_t__ ITER_DONE ; 
 int ITER_ERROR ; 
 int ITER_OK ; 
 scalar_t__ REF_TYPE_PER_WORKTREE ; 
 scalar_t__ FUNC0 (struct ref_iterator*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ref_iterator *ref_iterator)
{
	struct files_ref_iterator *iter =
		(struct files_ref_iterator *)ref_iterator;
	int ok;

	while ((ok = FUNC1(iter->iter0)) == ITER_OK) {
		if (iter->flags & DO_FOR_EACH_PER_WORKTREE_ONLY &&
		    FUNC3(iter->iter0->refname) != REF_TYPE_PER_WORKTREE)
			continue;

		if (!(iter->flags & DO_FOR_EACH_INCLUDE_BROKEN) &&
		    !FUNC2(iter->iter0->refname,
					    iter->iter0->oid,
					    iter->iter0->flags))
			continue;

		iter->base.refname = iter->iter0->refname;
		iter->base.oid = iter->iter0->oid;
		iter->base.flags = iter->iter0->flags;
		return ITER_OK;
	}

	iter->iter0 = NULL;
	if (FUNC0(ref_iterator) != ITER_DONE)
		ok = ITER_ERROR;

	return ok;
}