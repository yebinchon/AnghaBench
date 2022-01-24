#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct diff_queue_struct {int dummy; } ;
struct diff_filepair {TYPE_1__* one; TYPE_1__* two; int /*<<< orphan*/  score; } ;
struct TYPE_5__ {int /*<<< orphan*/  rename_used; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct diff_filepair* FUNC3 (struct diff_queue_struct*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_filepair*) ; 

__attribute__((used)) static void FUNC5(struct diff_filepair *p,
			 struct diff_filepair *pp,
			 struct diff_queue_struct *outq)
{
	/* p and pp are broken pairs we want to merge */
	struct diff_filepair *c = p, *d = pp, *dp;
	if (FUNC0(p->one)) {
		/* this must be a delete half */
		d = p; c = pp;
	}
	/* Sanity check */
	if (!FUNC0(d->one))
		FUNC1("internal error in merge #1");
	if (FUNC0(d->two))
		FUNC1("internal error in merge #2");
	if (FUNC0(c->one))
		FUNC1("internal error in merge #3");
	if (!FUNC0(c->two))
		FUNC1("internal error in merge #4");

	dp = FUNC3(outq, d->one, c->two);
	dp->score = p->score;
	/*
	 * We will be one extra user of the same src side of the
	 * broken pair, if it was used as the rename source for other
	 * paths elsewhere.  Increment to mark that the path stays
	 * in the resulting tree.
	 */
	d->one->rename_used++;
	FUNC2(d->two);
	FUNC2(c->one);
	FUNC4(d);
	FUNC4(c);
}