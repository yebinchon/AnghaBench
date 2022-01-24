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
struct oid_array {scalar_t__ nr; int /*<<< orphan*/  oid; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct TYPE_2__ {int has_changes; int /*<<< orphan*/  diff_from_contents; } ;
struct diff_options {scalar_t__ repo; int break_opt; int pickaxe_opts; scalar_t__ found_follow; TYPE_1__ flags; scalar_t__ orderfile; scalar_t__ detect_rename; scalar_t__ skip_stat_unmatch; } ;
struct diff_filepair {int /*<<< orphan*/  two; int /*<<< orphan*/  one; } ;

/* Variables and functions */
 int DIFF_PICKAXE_KINDS_MASK ; 
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct oid_array*,int /*<<< orphan*/ ) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC7 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC8 (struct diff_options*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ the_repository ; 

void FUNC12(struct diff_options *options)
{
	if (options->repo == the_repository && FUNC9()) {
		/*
		 * Prefetch the diff pairs that are about to be flushed.
		 */
		int i;
		struct diff_queue_struct *q = &diff_queued_diff;
		struct oid_array to_fetch = OID_ARRAY_INIT;

		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			FUNC0(options->repo, &to_fetch, p->one);
			FUNC0(options->repo, &to_fetch, p->two);
		}
		if (to_fetch.nr)
			/*
			 * NEEDSWORK: Consider deduplicating the OIDs sent.
			 */
			FUNC11(options->repo,
						   to_fetch.oid, to_fetch.nr);
		FUNC10(&to_fetch);
	}

	/* NOTE please keep the following in sync with diff_tree_combined() */
	if (options->skip_stat_unmatch)
		FUNC8(options);
	if (!options->found_follow) {
		/* See try_to_follow_renames() in tree-diff.c */
		if (options->break_opt != -1)
			FUNC3(options->repo,
				       options->break_opt);
		if (options->detect_rename)
			FUNC7(options);
		if (options->break_opt != -1)
			FUNC4();
	}
	if (options->pickaxe_opts & DIFF_PICKAXE_KINDS_MASK)
		FUNC6(options);
	if (options->orderfile)
		FUNC5(options->orderfile);
	if (!options->found_follow)
		/* See try_to_follow_renames() in tree-diff.c */
		FUNC1();
	FUNC2(options);

	if (diff_queued_diff.nr && !options->flags.diff_from_contents)
		options->flags.has_changes = 1;
	else
		options->flags.has_changes = 0;

	options->found_follow = 0;
}