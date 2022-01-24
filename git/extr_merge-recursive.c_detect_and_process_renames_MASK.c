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
struct tree {int dummy; } ;
struct string_list {int dummy; } ;
struct rename_info {int /*<<< orphan*/ * merge_renames; int /*<<< orphan*/ * head_renames; } ;
struct merge_options {scalar_t__ detect_directory_renames; int /*<<< orphan*/  branch2; int /*<<< orphan*/  branch1; TYPE_1__* priv; } ;
struct hashmap {int dummy; } ;
struct diff_queue_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  call_depth; } ;

/* Variables and functions */
 scalar_t__ MERGE_DIRECTORY_RENAMES_CONFLICT ; 
 scalar_t__ MERGE_DIRECTORY_RENAMES_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct hashmap*) ; 
 struct diff_queue_struct* FUNC1 (struct merge_options*,struct tree*,struct tree*) ; 
 struct hashmap* FUNC2 (struct diff_queue_struct*) ; 
 void* FUNC3 (struct merge_options*,int /*<<< orphan*/ ,struct diff_queue_struct*,struct hashmap*,struct hashmap*,struct tree*,struct tree*,struct tree*,struct tree*,struct string_list*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct merge_options*,struct hashmap*,struct tree*,struct hashmap*,struct tree*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_queue_struct*,struct hashmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct merge_options*) ; 
 int FUNC7 (struct merge_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hashmap* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct merge_options *opt,
				      struct tree *common,
				      struct tree *head,
				      struct tree *merge,
				      struct string_list *entries,
				      struct rename_info *ri)
{
	struct diff_queue_struct *head_pairs, *merge_pairs;
	struct hashmap *dir_re_head, *dir_re_merge;
	int clean = 1;

	ri->head_renames = NULL;
	ri->merge_renames = NULL;

	if (!FUNC6(opt))
		return 1;

	head_pairs = FUNC1(opt, common, head);
	merge_pairs = FUNC1(opt, common, merge);

	if ((opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_TRUE) ||
	    (opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_CONFLICT &&
	     !opt->priv->call_depth)) {
		dir_re_head = FUNC2(head_pairs);
		dir_re_merge = FUNC2(merge_pairs);

		FUNC4(opt,
						 dir_re_head, head,
						 dir_re_merge, merge);
	} else {
		dir_re_head  = FUNC8(sizeof(*dir_re_head));
		dir_re_merge = FUNC8(sizeof(*dir_re_merge));
		FUNC0(dir_re_head);
		FUNC0(dir_re_merge);
	}

	ri->head_renames  = FUNC3(opt, opt->branch1, head_pairs,
					dir_re_merge, dir_re_head, head,
					common, head, merge, entries,
					&clean);
	if (clean < 0)
		goto cleanup;
	ri->merge_renames = FUNC3(opt, opt->branch2, merge_pairs,
					dir_re_head, dir_re_merge, merge,
					common, head, merge, entries,
					&clean);
	if (clean < 0)
		goto cleanup;
	clean &= FUNC7(opt, ri->head_renames, ri->merge_renames);

cleanup:
	/*
	 * Some cleanup is deferred until cleanup_renames() because the
	 * data structures are still needed and referenced in
	 * process_entry().  But there are a few things we can free now.
	 */
	FUNC5(head_pairs, dir_re_head);
	FUNC5(merge_pairs, dir_re_merge);

	return clean;
}