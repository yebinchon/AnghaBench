#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; int /*<<< orphan*/  show; } ;
typedef  TYPE_3__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_11__ {int /*<<< orphan*/  status; TYPE_2__* index_to_workdir; } ;
typedef  TYPE_4__ git_status_entry ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_9__ {TYPE_1__ old_file; } ;

/* Variables and functions */
 TYPE_3__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
 int /*<<< orphan*/  GIT_STATUS_SHOW_INDEX_AND_WORKDIR ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*) ; 

void FUNC12(void)
{
	git_repository *repo = FUNC6("empty_standard_repo");
	git_status_list *statuslist;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	const git_status_entry *status;

	FUNC5(FUNC7("empty_standard_repo/dir", 0777));
	FUNC5(FUNC7("empty_standard_repo/dir/subdir", 0777));
	FUNC4("empty_standard_repo/.gitignore", "a.test\n");
	FUNC4("empty_standard_repo/dir/.gitignore", "!*.test\n");
	FUNC4("empty_standard_repo/dir/subdir/.gitignore", "a.test\n");
	FUNC4("empty_standard_repo/dir/a.test", "pong");
	FUNC4("empty_standard_repo/dir/subdir/a.test", "pong");

	opts.show = GIT_STATUS_SHOW_INDEX_AND_WORKDIR;
	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED | GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;

	FUNC5(FUNC11(&statuslist, repo, &opts));
	FUNC3(4, FUNC9(statuslist));

	status = FUNC8(statuslist, 0);
	FUNC0(status != NULL);
	FUNC2(".gitignore", status->index_to_workdir->old_file.path);
	FUNC1(GIT_STATUS_WT_NEW, status->status);

	status = FUNC8(statuslist, 1);
	FUNC0(status != NULL);
	FUNC2("dir/.gitignore", status->index_to_workdir->old_file.path);
	FUNC1(GIT_STATUS_WT_NEW, status->status);

	status = FUNC8(statuslist, 2);
	FUNC0(status != NULL);
	FUNC2("dir/a.test", status->index_to_workdir->old_file.path);
	FUNC1(GIT_STATUS_WT_NEW, status->status);

	status = FUNC8(statuslist, 3);
	FUNC0(status != NULL);
	FUNC2("dir/subdir/.gitignore", status->index_to_workdir->old_file.path);
	FUNC1(GIT_STATUS_WT_NEW, status->status);

	FUNC10(statuslist);
}