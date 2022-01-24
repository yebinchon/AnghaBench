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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC6(
	git_diff **out,
	git_repository *repo,
	git_tree *tree,
	const git_diff_options *opts)
{
	git_diff *d1 = NULL, *d2 = NULL;
	git_index *index = NULL;
	int error = 0;

	FUNC0(out && repo);

	*out = NULL;

	if ((error = FUNC1(&index, repo)) < 0)
		return error;

	if (!(error = FUNC5(&d1, repo, tree, index, opts)) &&
		!(error = FUNC3(&d2, repo, index, opts)))
		error = FUNC4(d1, d2);

	FUNC2(d2);

	if (error) {
		FUNC2(d1);
		d1 = NULL;
	}

	*out = d1;
	return error;
}