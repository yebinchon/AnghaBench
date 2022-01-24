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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_index *index;

	/* These tests should run and work everywhere, as the filemode is
	 * given explicitly to git_index_add or git_index_add_from_buffer
	 */
	FUNC2(g_repo, "core.filemode", false);

	FUNC1(FUNC4(&index, g_repo));

	/* Each of these tests keeps overwriting the same file in the index. */
	/* 1 - add new 0644 entry  */
	FUNC0(index, true, GIT_FILEMODE_BLOB);

	/* 2 - add 0755 entry over existing 0644 */
	FUNC0(index, true, GIT_FILEMODE_BLOB_EXECUTABLE);

	/* 3 - add 0644 entry over existing 0755 */
	FUNC0(index, true, GIT_FILEMODE_BLOB);

	/* 4 - add 0755 buffer entry over existing 0644  */
	FUNC0(index, false, GIT_FILEMODE_BLOB_EXECUTABLE);

	/* 5 - add 0644 buffer entry over existing 0755 */
	FUNC0(index, false, GIT_FILEMODE_BLOB);

	FUNC3(index);
}