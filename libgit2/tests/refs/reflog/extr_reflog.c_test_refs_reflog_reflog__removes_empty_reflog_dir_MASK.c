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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 char* GIT_REFLOG_DIR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_reference *ref;
	git_buf log_path = GIT_BUF_INIT;
	git_oid id;

	/* Create a new branch pointing at the HEAD */
	FUNC5(&id, current_master_tip);
	FUNC1(FUNC7(&ref, g_repo, "refs/heads/new-dir/new-head", &id, 0, NULL));

	FUNC4(&log_path, FUNC10(g_repo), GIT_REFLOG_DIR);
	FUNC4(&log_path, FUNC2(&log_path), "refs/heads/new-dir/new-head");

	FUNC0(true, FUNC6(FUNC2(&log_path)));

	FUNC1(FUNC8(ref));
	FUNC9(ref);

	/* new ref creation should succeed since new-dir is empty */
	FUNC5(&id, current_master_tip);
	FUNC1(FUNC7(&ref, g_repo, "refs/heads/new-dir", &id, 0, NULL));
	FUNC9(ref);

	FUNC3(&log_path);
}