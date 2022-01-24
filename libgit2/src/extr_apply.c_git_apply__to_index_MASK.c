#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ old_file; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_apply_options ;

/* Variables and functions */
 scalar_t__ GIT_DELTA_DELETED ; 
 scalar_t__ GIT_DELTA_RENAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
	git_repository *repo,
	git_diff *diff,
	git_index *preimage,
	git_index *postimage,
	git_apply_options *opts)
{
	git_index *index = NULL;
	const git_diff_delta *delta;
	const git_index_entry *entry;
	size_t i;
	int error;

	FUNC0(preimage);
	FUNC0(opts);

	if ((error = FUNC8(&index, repo)) < 0)
		goto done;

	/* Remove deleted (or renamed) paths from the index. */
	for (i = 0; i < FUNC2(diff); i++) {
		delta = FUNC1(diff, i);

		if (delta->status == GIT_DELTA_DELETED ||
		    delta->status == GIT_DELTA_RENAMED) {
			if ((error = FUNC7(index, delta->old_file.path, 0)) < 0)
				goto done;
		}
	}

	/* Then add the changes back to the index. */
	for (i = 0; i < FUNC4(postimage); i++) {
		entry = FUNC6(postimage, i);

		if ((error = FUNC3(index, entry)) < 0)
			goto done;
	}

done:
	FUNC5(index);
	return error;
}