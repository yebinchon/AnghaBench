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
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
	size_t nlogs, nlogs_after;
	size_t nlogs_master, nlogs_master_after;
	git_reference *ref;
	git_reflog *log;
	git_oid id;

	FUNC1(FUNC7(&log, g_repo, "HEAD"));
	nlogs = FUNC5(log);
	FUNC6(log);

	FUNC1(FUNC7(&log, g_repo, "refs/heads/master"));
	nlogs_master = FUNC5(log);
	FUNC6(log);

	/* Move it back */
	FUNC2(&id, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1(FUNC3(&ref, g_repo, "refs/heads/master", &id, 1, NULL));
	FUNC4(ref);

	FUNC1(FUNC7(&log, g_repo, "HEAD"));
	nlogs_after = FUNC5(log);
	FUNC6(log);

	FUNC0(nlogs_after, nlogs);

	FUNC1(FUNC7(&log, g_repo, "refs/heads/master"));
	nlogs_master_after = FUNC5(log);
	FUNC6(log);

	FUNC0(nlogs_after, nlogs);
	FUNC0(nlogs_master_after, nlogs_master);

}