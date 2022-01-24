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
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_10__ {int /*<<< orphan*/ * baseline; int /*<<< orphan*/  show; } ;
typedef  TYPE_3__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_11__ {int /*<<< orphan*/  status; TYPE_2__* index_to_workdir; } ;
typedef  TYPE_4__ git_status_entry ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_9__ {TYPE_1__ old_file; } ;

/* Variables and functions */
 int GIT_STATUS_INDEX_NEW ; 
 TYPE_3__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_SHOW_INDEX_AND_WORKDIR ; 
 int GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 

void FUNC15(void)
{
	git_repository *repo = FUNC7("empty_standard_repo");
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	git_status_list *statuslist;
	git_tree *parent_tree;
	const git_status_entry *status;

	FUNC4("empty_standard_repo/file1", "ping");
	FUNC14(repo, "file1");

	FUNC5(FUNC8(&parent_tree, repo));

	FUNC4("empty_standard_repo/file2", "pong");
	FUNC14(repo, "file2");

	FUNC6("empty_standard_repo/file2", "pyng");

	opts.show = GIT_STATUS_SHOW_INDEX_AND_WORKDIR;
	opts.baseline = parent_tree;
	FUNC5(FUNC12(&statuslist, repo, &opts));

	FUNC3(1, FUNC10(statuslist));
	status = FUNC9(statuslist, 0);
	FUNC0(status != NULL);
	FUNC2("file2", status->index_to_workdir->old_file.path);
	FUNC1(GIT_STATUS_WT_MODIFIED | GIT_STATUS_INDEX_NEW, status->status);

	FUNC13(parent_tree);
	FUNC11(statuslist);
}