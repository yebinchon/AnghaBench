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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 char* GIT_REFLOG_DIR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_reference *master, *new_master;
	git_buf master_log_path = GIT_BUF_INIT, moved_log_path = GIT_BUF_INIT;

	FUNC4(&master_log_path, FUNC10(g_repo), GIT_REFLOG_DIR);
	FUNC5(&moved_log_path, FUNC2(&master_log_path));
	FUNC4(&master_log_path, FUNC2(&master_log_path), "refs/heads/master");
	FUNC4(&moved_log_path, FUNC2(&moved_log_path), "refs/moved");

	FUNC0(true, FUNC6(FUNC2(&master_log_path)));
	FUNC0(false, FUNC6(FUNC2(&moved_log_path)));

	FUNC1(FUNC8(&master, g_repo, "refs/heads/master"));
	FUNC1(FUNC9(&new_master, master, "refs/moved", 0, NULL));
	FUNC7(master);

	FUNC0(false, FUNC6(FUNC2(&master_log_path)));
	FUNC0(true, FUNC6(FUNC2(&moved_log_path)));

	FUNC7(new_master);
	FUNC3(&moved_log_path);
	FUNC3(&master_log_path);
}