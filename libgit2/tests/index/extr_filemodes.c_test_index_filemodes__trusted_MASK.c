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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB_EXECUTABLE ; 
 int GIT_INDEX_CAPABILITY_NO_FILEMODE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

void FUNC10(void)
{
	git_index *index;

	/* Only run these tests on platforms where I can actually
	 * chmod a file and get the stat results I expect!
	 */
	if (!FUNC4())
		return;

	FUNC5(g_repo, "core.filemode", true);

	FUNC2(FUNC8(&index, g_repo));
	FUNC1((FUNC6(index) & GIT_INDEX_CAPABILITY_NO_FILEMODE) == 0);

	/* 1 - add 0644 over existing 0644 -> expect 0644 */
	FUNC9("exec_off", "filemodes/exec_off.0", 0644);
	FUNC0(index, "exec_off", GIT_FILEMODE_BLOB);

	/* 2 - add 0644 over existing 0755 -> expect 0644 */
	FUNC9("exec_on", "filemodes/exec_on.0", 0644);
	FUNC0(index, "exec_on", GIT_FILEMODE_BLOB);

	/* 3 - add 0755 over existing 0644 -> expect 0755 */
	FUNC9("exec_off", "filemodes/exec_off.1", 0755);
	FUNC0(index, "exec_off", GIT_FILEMODE_BLOB_EXECUTABLE);

	/* 4 - add 0755 over existing 0755 -> expect 0755 */
	FUNC9("exec_on", "filemodes/exec_on.1", 0755);
	FUNC0(index, "exec_on", GIT_FILEMODE_BLOB_EXECUTABLE);

	/*  5 - add new 0644 -> expect 0644 */
	FUNC3("filemodes/new_off", "blah", 0,
		O_WRONLY | O_CREAT | O_TRUNC, 0644);
	FUNC0(index, "new_off", GIT_FILEMODE_BLOB);

	/* 6 - add 0755 -> expect 0755 */
	FUNC3("filemodes/new_on", "blah", 0,
		O_WRONLY | O_CREAT | O_TRUNC, 0755);
	FUNC0(index, "new_on", GIT_FILEMODE_BLOB_EXECUTABLE);

	FUNC7(index);
}