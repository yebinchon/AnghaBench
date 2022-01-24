#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int git_remote_autotag_option_t ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TAGOPT_FMT ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
#define  GIT_REMOTE_DOWNLOAD_TAGS_ALL 130 
#define  GIT_REMOTE_DOWNLOAD_TAGS_AUTO 129 
#define  GIT_REMOTE_DOWNLOAD_TAGS_NONE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC8(git_repository *repo, const char *remote, git_remote_autotag_option_t value)
{
	git_buf var = GIT_BUF_INIT;
	git_config *config;
	int error;

	FUNC0(repo && remote);

	if ((error = FUNC1(remote)) < 0)
		return error;

	if ((error = FUNC7(&config, repo)) < 0)
		return error;

	if ((error = FUNC3(&var, CONFIG_TAGOPT_FMT, remote)))
		return error;

	switch (value) {
	case GIT_REMOTE_DOWNLOAD_TAGS_NONE:
		error = FUNC5(config, var.ptr, "--no-tags");
		break;
	case GIT_REMOTE_DOWNLOAD_TAGS_ALL:
		error = FUNC5(config, var.ptr, "--tags");
		break;
	case GIT_REMOTE_DOWNLOAD_TAGS_AUTO:
		error = FUNC4(config, var.ptr);
		if (error == GIT_ENOTFOUND)
			error = 0;
		break;
	default:
		FUNC6(GIT_ERROR_INVALID, "invalid value for the tagopt setting");
		error = -1;
	}

	FUNC2(&var);
	return error;
}