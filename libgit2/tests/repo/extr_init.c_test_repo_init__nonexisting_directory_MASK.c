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
typedef  int /*<<< orphan*/  git_repository_init_options ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REPOSITORY_INIT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
	git_repository *repo;

	/*
	 * If creating a repo with non-existing parent directories, then libgit2
	 * will by default create the complete directory hierarchy if using
	 * `git_repository_init`. Thus, let's use the extended version and not
	 * set the `GIT_REPOSITORY_INIT_MKPATH` flag.
	 */
	FUNC0(FUNC1(&repo, "nonexisting/path", &opts));
}