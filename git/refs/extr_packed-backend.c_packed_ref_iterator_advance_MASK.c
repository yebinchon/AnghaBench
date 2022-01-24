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
struct ref_iterator {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  refname; } ;
struct packed_ref_iterator {int flags; int /*<<< orphan*/  oid; TYPE_1__ base; } ;

/* Variables and functions */
 int DO_FOR_EACH_INCLUDE_BROKEN ; 
 int DO_FOR_EACH_PER_WORKTREE_ONLY ; 
 scalar_t__ ITER_DONE ; 
 int ITER_ERROR ; 
 int ITER_OK ; 
 scalar_t__ REF_TYPE_PER_WORKTREE ; 
 int FUNC0 (struct packed_ref_iterator*) ; 
 scalar_t__ FUNC1 (struct ref_iterator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ref_iterator *ref_iterator)
{
	struct packed_ref_iterator *iter =
		(struct packed_ref_iterator *)ref_iterator;
	int ok;

	while ((ok = FUNC0(iter)) == ITER_OK) {
		if (iter->flags & DO_FOR_EACH_PER_WORKTREE_ONLY &&
		    FUNC3(iter->base.refname) != REF_TYPE_PER_WORKTREE)
			continue;

		if (!(iter->flags & DO_FOR_EACH_INCLUDE_BROKEN) &&
		    !FUNC2(iter->base.refname, &iter->oid,
					    iter->flags))
			continue;

		return ITER_OK;
	}

	if (FUNC1(ref_iterator) != ITER_DONE)
		ok = ITER_ERROR;

	return ok;
}