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
typedef  int /*<<< orphan*/  git_blame_options ;
typedef  int /*<<< orphan*/  git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BLAME_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(
		git_blame **out,
		git_repository *repo,
		const char *path,
		git_blame_options *options)
{
	int error = -1;
	git_blame_options normOptions = GIT_BLAME_OPTIONS_INIT;
	git_blame *blame = NULL;

	FUNC1(out && repo && path);
	if ((error = FUNC6(&normOptions, options, repo)) < 0)
		goto on_error;

	blame = FUNC3(repo, normOptions, path);
	FUNC0(blame);

	if ((error = FUNC5(blame)) < 0)
		goto on_error;

	if ((error = FUNC2(blame)) < 0)
		goto on_error;

	*out = blame;
	return 0;

on_error:
	FUNC4(blame);
	return error;
}