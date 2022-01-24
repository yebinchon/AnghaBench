#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; int /*<<< orphan*/  show; } ;
struct opts {char* member_1; scalar_t__ format; scalar_t__ repeat; int /*<<< orphan*/ * repodir; scalar_t__ showsubmod; scalar_t__ showbranch; TYPE_1__ statusopt; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 scalar_t__ FORMAT_LONG ; 
 int /*<<< orphan*/  GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ; 
 int GIT_STATUS_OPT_SORT_CASE_SENSITIVELY ; 
 int /*<<< orphan*/  GIT_STATUS_SHOW_INDEX_AND_WORKDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct opts*,int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_submod ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

int FUNC13(git_repository *repo, int argc, char *argv[])
{
	git_status_list *status;
	struct opts o = { GIT_STATUS_OPTIONS_INIT, "." };

	o.statusopt.show  = GIT_STATUS_SHOW_INDEX_AND_WORKDIR;
	o.statusopt.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX |
		GIT_STATUS_OPT_SORT_CASE_SENSITIVELY;

	FUNC7(&o, argc, argv);

	if (FUNC2(repo))
		FUNC1("Cannot report status on bare repository",
			FUNC3(repo));

show_status:
	if (o.repeat)
		FUNC10("\033[H\033[2J");

	/**
	 * Run status on the repository
	 *
	 * We use `git_status_list_new()` to generate a list of status
	 * information which lets us iterate over it at our
	 * convenience and extract the data we want to show out of
	 * each entry.
	 *
	 * You can use `git_status_foreach()` or
	 * `git_status_foreach_ext()` if you'd prefer to execute a
	 * callback for each entry. The latter gives you more control
	 * about what results are presented.
	 */
	FUNC0(FUNC5(&status, repo, &o.statusopt),
		"Could not get status", NULL);

	if (o.showbranch)
		FUNC11(repo, o.format);

	if (o.showsubmod) {
		int submod_count = 0;
		FUNC0(FUNC6(repo, print_submod, &submod_count),
			"Cannot iterate submodules", o.repodir);
	}

	if (o.format == FORMAT_LONG)
		FUNC8(status);
	else
		FUNC9(repo, status);

	FUNC4(status);

	if (o.repeat) {
		FUNC12(o.repeat);
		goto show_status;
	}

	return 0;
}