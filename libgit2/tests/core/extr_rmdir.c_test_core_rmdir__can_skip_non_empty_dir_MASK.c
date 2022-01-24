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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  GIT_RMDIR_SKIP_NONEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  empty_tmp_dir ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_buf file = GIT_BUF_INIT;

	FUNC2(FUNC5(&file, empty_tmp_dir, "/two/file.txt"));

	FUNC1(FUNC3(&file), "dummy");

	FUNC2(FUNC6(empty_tmp_dir, NULL, GIT_RMDIR_SKIP_NONEMPTY));
	FUNC0(FUNC7(FUNC3(&file)) == true);

	FUNC2(FUNC6(empty_tmp_dir, NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC0(FUNC7(empty_tmp_dir) == false);

	FUNC4(&file);
}