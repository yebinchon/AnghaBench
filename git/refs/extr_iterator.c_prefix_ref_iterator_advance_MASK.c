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
struct ref_iterator {scalar_t__ refname; int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; scalar_t__ ordered; } ;
struct TYPE_2__ {scalar_t__ refname; int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; } ;
struct prefix_ref_iterator {scalar_t__ trim; struct ref_iterator* iter0; TYPE_1__ base; int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ITER_DONE ; 
 int ITER_ERROR ; 
 int ITER_OK ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ref_iterator*) ; 
 int FUNC3 (struct ref_iterator*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ref_iterator *ref_iterator)
{
	struct prefix_ref_iterator *iter =
		(struct prefix_ref_iterator *)ref_iterator;
	int ok;

	while ((ok = FUNC3(iter->iter0)) == ITER_OK) {
		int cmp = FUNC1(iter->iter0->refname, iter->prefix);

		if (cmp < 0)
			continue;

		if (cmp > 0) {
			/*
			 * If the source iterator is ordered, then we
			 * can stop the iteration as soon as we see a
			 * refname that comes after the prefix:
			 */
			if (iter->iter0->ordered) {
				ok = FUNC2(iter->iter0);
				break;
			} else {
				continue;
			}
		}

		if (iter->trim) {
			/*
			 * It is nonsense to trim off characters that
			 * you haven't already checked for via a
			 * prefix check, whether via this
			 * `prefix_ref_iterator` or upstream in
			 * `iter0`). So if there wouldn't be at least
			 * one character left in the refname after
			 * trimming, report it as a bug:
			 */
			if (FUNC4(iter->iter0->refname) <= iter->trim)
				FUNC0("attempt to trim too many characters");
			iter->base.refname = iter->iter0->refname + iter->trim;
		} else {
			iter->base.refname = iter->iter0->refname;
		}

		iter->base.oid = iter->iter0->oid;
		iter->base.flags = iter->iter0->flags;
		return ITER_OK;
	}

	iter->iter0 = NULL;
	if (FUNC2(ref_iterator) != ITER_DONE)
		return ITER_ERROR;
	return ok;
}