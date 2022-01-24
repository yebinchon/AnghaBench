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
typedef  int /*<<< orphan*/  ls_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(git_repository *repo, int argc, char *argv[])
{
	git_index *index = NULL;
	ls_options opts;
	int error;

	if ((error = FUNC2(&opts, argc, argv)) < 0)
		return error;

	if ((error = FUNC1(&index, repo)) < 0)
		goto cleanup;

	error = FUNC3(&opts, index);

cleanup:
	FUNC0(index);

	return error;
}