#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC13(void)
{
	git_reference *branch;
	git_reflog *log;
	git_oid oidzero = {{0}};
	git_signature *sig;

	/* Ensure the reflog has at least one entry */
	FUNC2(FUNC12(&sig, "Me", "user@example.com"));
	FUNC2(FUNC10(&log, repo, "refs/heads/track-local"));
	FUNC2(FUNC7(log, &oidzero, sig, "message"));
	FUNC0(FUNC8(log) > 0);
	FUNC11(sig);
	FUNC9(log);

	FUNC2(FUNC4(&branch, repo, "track-local", GIT_BRANCH_LOCAL));
	FUNC2(FUNC3(branch));
	FUNC5(branch);

	FUNC1(false, FUNC6(repo, "refs/heads/track-local"));

	/* Reading a nonexistant reflog creates it, but it should be empty */
	FUNC2(FUNC10(&log, repo, "refs/heads/track-local"));
	FUNC1(0, FUNC8(log));
	FUNC9(log);
}