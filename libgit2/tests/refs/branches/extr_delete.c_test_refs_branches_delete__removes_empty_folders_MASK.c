#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_REFLOG_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC20(void)
{
	const char *commondir = FUNC17(repo);
	git_oid commit_id;
	git_commit *commit;
	git_reference *branch;

	git_reflog *log;
	git_oid oidzero = {{0}};
	git_signature *sig;

	git_buf ref_folder = GIT_BUF_INIT;
	git_buf reflog_folder = GIT_BUF_INIT;

	/* Create a new branch with a nested name */
	FUNC1(FUNC10(&commit_id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));
	FUNC1(FUNC9(&commit, repo, &commit_id));
	FUNC1(FUNC2(&branch, repo, "some/deep/ref", commit, 0));
	FUNC8(commit);

	/* Ensure the reflog has at least one entry */
	FUNC1(FUNC19(&sig, "Me", "user@example.com"));
	FUNC1(FUNC16(&log, repo, "refs/heads/some/deep/ref"));
	FUNC1(FUNC13(log, &oidzero, sig, "message"));
	FUNC0(FUNC14(log) > 0);
	FUNC18(sig);
	FUNC15(log);

	FUNC1(FUNC7(&ref_folder, commondir, "refs/heads/some/deep"));
	FUNC1(FUNC6(&reflog_folder, '/', commondir, GIT_REFLOG_DIR, "refs/heads/some/deep"));

	FUNC0(FUNC11(FUNC4(&ref_folder)) == true);
	FUNC0(FUNC11(FUNC4(&reflog_folder)) == true);

	FUNC1(FUNC3(branch));

	FUNC0(FUNC11(FUNC4(&ref_folder)) == false);
	FUNC0(FUNC11(FUNC4(&reflog_folder)) == false);

	FUNC12(branch);
	FUNC5(&ref_folder);
	FUNC5(&reflog_folder);
}