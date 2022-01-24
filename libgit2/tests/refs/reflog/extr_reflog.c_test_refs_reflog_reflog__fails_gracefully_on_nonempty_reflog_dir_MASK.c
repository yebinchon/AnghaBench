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
 int /*<<< orphan*/  GIT_EDIRECTORY ; 
 char* GIT_REFLOG_DIR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13(void)
{
	git_reference *ref;
	git_buf log_path = GIT_BUF_INIT;
	git_oid id;

	/* Create a new branch pointing at the HEAD */
	FUNC7(&id, current_master_tip);
	FUNC2(FUNC9(&ref, g_repo, "refs/heads/new-dir/new-head", &id, 0, NULL));
	FUNC10(ref);

	FUNC6(&log_path, FUNC11(g_repo), GIT_REFLOG_DIR);
	FUNC6(&log_path, FUNC4(&log_path), "refs/heads/new-dir/new-head");

	FUNC0(true, FUNC8(FUNC4(&log_path)));

	/* delete the ref manually, leave the reflog */
	FUNC3(FUNC12("testrepo.git/refs/heads/new-dir/new-head"));

	/* new ref creation should fail since new-dir contains reflogs still */
	FUNC7(&id, current_master_tip);
	FUNC1(GIT_EDIRECTORY, FUNC9(&ref, g_repo, "refs/heads/new-dir", &id, 0, NULL));
	FUNC10(ref);

	FUNC5(&log_path);
}