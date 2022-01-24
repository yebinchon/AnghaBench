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
struct object_id {int dummy; } ;
struct line_log_data {int dummy; } ;
struct diff_queue_struct {int dummy; } ;
struct diff_options {int /*<<< orphan*/  pathspec; scalar_t__ detect_rename; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  diff_queued_diff ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,struct object_id*,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC6 (struct line_log_data*,int) ; 
 struct object_id* FUNC7 (struct commit*) ; 
 int /*<<< orphan*/  FUNC8 (struct diff_queue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct line_log_data*) ; 

__attribute__((used)) static void FUNC11(struct line_log_data *range,
			struct diff_options *opt,
			struct diff_queue_struct *queue,
			struct commit *commit, struct commit *parent)
{
	struct object_id *tree_oid, *parent_tree_oid;

	FUNC1(commit);

	tree_oid = FUNC7(commit);
	parent_tree_oid = parent ? FUNC7(parent) : NULL;

	if (opt->detect_rename &&
	    !FUNC10(&opt->pathspec, range)) {
		FUNC2(&opt->pathspec);
		FUNC9(&opt->pathspec, range);
	}
	FUNC0(&diff_queued_diff);
	FUNC4(parent_tree_oid, tree_oid, "", opt);
	if (opt->detect_rename && FUNC3()) {
		/* must look at the full tree diff to detect renames */
		FUNC2(&opt->pathspec);
		FUNC0(&diff_queued_diff);

		FUNC4(parent_tree_oid, tree_oid, "", opt);

		FUNC6(range, 1);
		FUNC5(opt);
		FUNC6(range, 0);
	}
	FUNC8(queue, &diff_queued_diff);
}