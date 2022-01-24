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
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {void* status; TYPE_1__* one; TYPE_1__* two; } ;
struct TYPE_2__ {scalar_t__ rename_used; scalar_t__ mode; int /*<<< orphan*/  path; int /*<<< orphan*/  oid; scalar_t__ dirty_submodule; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct diff_filepair*) ; 
 scalar_t__ FUNC2 (struct diff_filepair*) ; 
 scalar_t__ FUNC3 (struct diff_filepair*) ; 
 void* DIFF_STATUS_ADDED ; 
 void* DIFF_STATUS_COPIED ; 
 void* DIFF_STATUS_DELETED ; 
 void* DIFF_STATUS_MODIFIED ; 
 void* DIFF_STATUS_RENAMED ; 
 void* DIFF_STATUS_TYPE_CHANGED ; 
 void* DIFF_STATUS_UNKNOWN ; 
 void* DIFF_STATUS_UNMERGED ; 
 int /*<<< orphan*/  FUNC4 (char*,struct diff_queue_struct*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	int i;
	struct diff_filepair *p;
	struct diff_queue_struct *q = &diff_queued_diff;

	FUNC4("resolve-rename-copy", q);

	for (i = 0; i < q->nr; i++) {
		p = q->queue[i];
		p->status = 0; /* undecided */
		if (FUNC3(p))
			p->status = DIFF_STATUS_UNMERGED;
		else if (!FUNC0(p->one))
			p->status = DIFF_STATUS_ADDED;
		else if (!FUNC0(p->two))
			p->status = DIFF_STATUS_DELETED;
		else if (FUNC2(p))
			p->status = DIFF_STATUS_TYPE_CHANGED;

		/* from this point on, we are dealing with a pair
		 * whose both sides are valid and of the same type, i.e.
		 * either in-place edit or rename/copy edit.
		 */
		else if (FUNC1(p)) {
			/*
			 * A rename might have re-connected a broken
			 * pair up, causing the pathnames to be the
			 * same again. If so, that's not a rename at
			 * all, just a modification..
			 *
			 * Otherwise, see if this source was used for
			 * multiple renames, in which case we decrement
			 * the count, and call it a copy.
			 */
			if (!FUNC8(p->one->path, p->two->path))
				p->status = DIFF_STATUS_MODIFIED;
			else if (--p->one->rename_used > 0)
				p->status = DIFF_STATUS_COPIED;
			else
				p->status = DIFF_STATUS_RENAMED;
		}
		else if (!FUNC7(&p->one->oid, &p->two->oid) ||
			 p->one->mode != p->two->mode ||
			 p->one->dirty_submodule ||
			 p->two->dirty_submodule ||
			 FUNC6(&p->one->oid))
			p->status = DIFF_STATUS_MODIFIED;
		else {
			/* This is a "no-change" entry and should not
			 * happen anymore, but prepare for broken callers.
			 */
			FUNC5("feeding unmodified %s to diffcore",
			      p->one->path);
			p->status = DIFF_STATUS_UNKNOWN;
		}
	}
	FUNC4("resolve-rename-copy done", q);
}