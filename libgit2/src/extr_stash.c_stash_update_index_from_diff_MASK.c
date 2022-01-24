#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stash_update_rules {int /*<<< orphan*/  include_changed; int /*<<< orphan*/  include_untracked; int /*<<< orphan*/  include_ignored; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
struct TYPE_5__ {char* path; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {int status; TYPE_2__ old_file; TYPE_1__ new_file; } ;
typedef  TYPE_3__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
#define  GIT_DELTA_ADDED 132 
#define  GIT_DELTA_DELETED 131 
#define  GIT_DELTA_IGNORED 130 
#define  GIT_DELTA_MODIFIED 129 
#define  GIT_DELTA_UNTRACKED 128 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC6(
	git_repository *repo,
	git_index *index,
	const git_diff *diff,
	struct stash_update_rules *data)
{
	int error = 0;
	size_t d, max_d = FUNC1(diff);

	for (d = 0; !error && d < max_d; ++d) {
		const char *add_path = NULL;
		const git_diff_delta *delta = FUNC0(diff, d);

		switch (delta->status) {
		case GIT_DELTA_IGNORED:
			if (data->include_ignored)
				add_path = delta->new_file.path;
			break;

		case GIT_DELTA_UNTRACKED:
			if (data->include_untracked &&
				delta->new_file.mode != GIT_FILEMODE_TREE)
				add_path = delta->new_file.path;
			break;

		case GIT_DELTA_ADDED:
		case GIT_DELTA_MODIFIED:
			if (data->include_changed)
				add_path = delta->new_file.path;
			break;

		case GIT_DELTA_DELETED:
			if (data->include_changed &&
				!FUNC3(NULL, index, delta->old_file.path))
				error = FUNC4(index, delta->old_file.path, 0);
			break;

		default:
			/* Unimplemented */
			FUNC2(
				GIT_ERROR_INVALID,
				"cannot update index. Unimplemented status (%d)",
				delta->status);
			return -1;
		}

		if (add_path != NULL)
			error = FUNC5(repo, index, add_path);
	}

	return error;
}