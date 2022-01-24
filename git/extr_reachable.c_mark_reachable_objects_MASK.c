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
typedef  scalar_t__ timestamp_t ;
struct rev_info {int tag_objects; int blob_objects; int tree_objects; int ignore_missing_links; } ;
struct progress {int dummy; } ;
struct connectivity_progress {scalar_t__ count; struct progress* progress; } ;
struct bitmap_index {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_one_ref ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rev_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct progress*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct bitmap_index*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rev_info*) ; 
 int /*<<< orphan*/  mark_commit ; 
 int /*<<< orphan*/  mark_object ; 
 int /*<<< orphan*/  mark_object_seen ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rev_info*) ; 
 struct bitmap_index* FUNC9 (struct rev_info*) ; 
 scalar_t__ FUNC10 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct bitmap_index*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct connectivity_progress*) ; 

void FUNC13(struct rev_info *revs, int mark_reflog,
			    timestamp_t mark_recent, struct progress *progress)
{
	struct connectivity_progress cp;
	struct bitmap_index *bitmap_git;

	/*
	 * Set up revision parsing, and mark us as being interested
	 * in all object types, not just commits.
	 */
	revs->tag_objects = 1;
	revs->blob_objects = 1;
	revs->tree_objects = 1;

	/* Add all refs from the index file */
	FUNC0(revs, 0);

	/* Add all external refs */
	FUNC5(add_one_ref, revs);

	/* detached HEAD is not included in the list above */
	FUNC7(add_one_ref, revs);
	FUNC8(add_one_ref, revs);

	/* Add all reflog info */
	if (mark_reflog)
		FUNC1(revs, 0);

	cp.progress = progress;
	cp.count = 0;

	bitmap_git = FUNC9(revs);
	if (bitmap_git) {
		FUNC11(bitmap_git, mark_object_seen);
		FUNC6(bitmap_git);
		return;
	}

	/*
	 * Set up the revision walk - this will move all commits
	 * from the pending list to the commit walking list.
	 */
	if (FUNC10(revs))
		FUNC3("revision walk setup failed");
	FUNC12(revs, mark_commit, mark_object, &cp);

	if (mark_recent) {
		revs->ignore_missing_links = 1;
		if (FUNC2(revs, mark_recent))
			FUNC3("unable to mark recent objects");
		if (FUNC10(revs))
			FUNC3("revision walk setup failed");
		FUNC12(revs, mark_commit, mark_object, &cp);
	}

	FUNC4(cp.progress, cp.count);
}