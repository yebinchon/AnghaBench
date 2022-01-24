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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_merge_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	git_index **index_out,
	git_annotated_commit **base_out,
	git_repository *repo,
	git_annotated_commit *ours,
	git_annotated_commit *theirs,
	size_t recursion_level,
	const git_merge_options *opts)
{
	git_annotated_commit *base = NULL;
	git_iterator *base_iter = NULL, *our_iter = NULL, *their_iter = NULL;
	int error;

	if ((error = FUNC0(&base, repo, ours, theirs, opts,
		recursion_level)) < 0) {

		if (error != GIT_ENOTFOUND)
			goto done;

		FUNC2();
	}

	if ((error = FUNC5(&base_iter, base)) < 0 ||
		(error = FUNC5(&our_iter, ours)) < 0 ||
		(error = FUNC5(&their_iter, theirs)) < 0 ||
		(error = FUNC4(index_out, repo, base_iter, our_iter,
			their_iter, opts)) < 0)
		goto done;

	if (base_out) {
		*base_out = base;
		base = NULL;
	}

done:
	FUNC1(base);
	FUNC3(base_iter);
	FUNC3(our_iter);
	FUNC3(their_iter);
	return error;
}