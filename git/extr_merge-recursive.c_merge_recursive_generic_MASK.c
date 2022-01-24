#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct merge_options {char* ancestor; TYPE_1__* repo; int /*<<< orphan*/  branch2; int /*<<< orphan*/  branch1; } ;
struct lock_file {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int SKIP_IF_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int FUNC2 (struct merge_options*,int /*<<< orphan*/ ,...) ; 
 struct commit* FUNC3 (TYPE_1__*,struct object_id const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct merge_options*,struct commit*,struct commit*,struct commit_list*,struct commit**) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lock_file*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct lock_file*,int) ; 

int FUNC9(struct merge_options *opt,
			    const struct object_id *head,
			    const struct object_id *merge,
			    int num_merge_bases,
			    const struct object_id **merge_bases,
			    struct commit **result)
{
	int clean;
	struct lock_file lock = LOCK_INIT;
	struct commit *head_commit = FUNC3(opt->repo, head, opt->branch1);
	struct commit *next_commit = FUNC3(opt->repo, merge, opt->branch2);
	struct commit_list *ca = NULL;

	if (merge_bases) {
		int i;
		for (i = 0; i < num_merge_bases; ++i) {
			struct commit *base;
			if (!(base = FUNC3(opt->repo, merge_bases[i],
					     FUNC5(merge_bases[i]))))
				return FUNC2(opt, FUNC0("Could not parse object '%s'"),
					   FUNC5(merge_bases[i]));
			FUNC1(base, &ca);
		}
		if (num_merge_bases == 1)
			opt->ancestor = "constructed merge base";
	}

	FUNC6(opt->repo, &lock, LOCK_DIE_ON_ERROR);
	clean = FUNC4(opt, head_commit, next_commit, ca,
				result);
	if (clean < 0) {
		FUNC7(&lock);
		return clean;
	}

	if (FUNC8(opt->repo->index, &lock,
			       COMMIT_LOCK | SKIP_IF_UNCHANGED))
		return FUNC2(opt, FUNC0("Unable to write index."));

	return clean ? 0 : 1;
}