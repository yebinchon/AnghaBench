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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 int GIT_REPO_VERSION ; 
 int FUNC0 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC2(git_config *config)
{
	int version, error;

	error = FUNC0(&version, config, "core.repositoryformatversion");
	/* git ignores this if the config variable isn't there */
	if (error == GIT_ENOTFOUND)
		return 0;

	if (error < 0)
		return -1;

	if (GIT_REPO_VERSION < version) {
		FUNC1(GIT_ERROR_REPOSITORY,
			"unsupported repository version %d. Only versions up to %d are supported.",
			version, GIT_REPO_VERSION);
		return -1;
	}

	return 0;
}