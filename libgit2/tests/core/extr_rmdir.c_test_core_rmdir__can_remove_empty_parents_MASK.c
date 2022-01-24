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
 int GIT_RMDIR_EMPTY_HIERARCHY ; 
 int GIT_RMDIR_EMPTY_PARENTS ; 
 int GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* empty_tmp_dir ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*) ; 

void FUNC10(void)
{
	git_buf file = GIT_BUF_INIT;

	FUNC2(
		FUNC5(&file, empty_tmp_dir, "/one/two_two/three/file.txt"));
	FUNC1(FUNC3(&file), "dummy");
	FUNC0(FUNC9(FUNC3(&file)));

	FUNC2(FUNC7("one/two_two/three/file.txt", empty_tmp_dir,
		GIT_RMDIR_REMOVE_FILES | GIT_RMDIR_EMPTY_PARENTS));

	FUNC0(!FUNC8(FUNC3(&file)));

	FUNC6(&file, '/'); /* three (only contained file.txt) */
	FUNC0(!FUNC8(FUNC3(&file)));

	FUNC6(&file, '/'); /* two_two (only contained three) */
	FUNC0(!FUNC8(FUNC3(&file)));

	FUNC6(&file, '/'); /* one (contained two_one also) */
	FUNC0(FUNC8(FUNC3(&file)));

	FUNC0(FUNC8(empty_tmp_dir) == true);

	FUNC4(&file);

	FUNC2(FUNC7(empty_tmp_dir, NULL, GIT_RMDIR_EMPTY_HIERARCHY));
}