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
typedef  int /*<<< orphan*/  git_strmap ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reader ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_apply_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(
	git_repository *repo,
	git_reader *pre_reader,
	git_index *preimage,
	git_reader *post_reader,
	git_index *postimage,
	git_diff *diff,
	const git_apply_options *opts)
{
	git_strmap *removed_paths;
	size_t i;
	int error = 0;

	if (FUNC3(&removed_paths) < 0)
		return -1;

	for (i = 0; i < FUNC1(diff); i++) {
		if ((error = FUNC0(repo, pre_reader, preimage, post_reader, postimage, diff, removed_paths, i, opts)) < 0)
			goto done;
	}

done:
	FUNC2(removed_paths);
	return error;
}