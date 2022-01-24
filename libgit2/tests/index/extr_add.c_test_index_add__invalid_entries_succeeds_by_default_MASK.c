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

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB_EXECUTABLE ; 
 int /*<<< orphan*/  GIT_FILEMODE_LINK ; 
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invalid_id ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  valid_blob_id ; 
 int /*<<< orphan*/  valid_commit_id ; 
 int /*<<< orphan*/  valid_tree_id ; 

void FUNC3(void)
{
	/*
	 * Ensure that there is validation on object ids by default
	 */

	/* ensure that we can add some actually good entries */
	FUNC2(true, valid_blob_id, GIT_FILEMODE_BLOB);
	FUNC2(true, valid_blob_id, GIT_FILEMODE_BLOB_EXECUTABLE);
	FUNC2(true, valid_blob_id, GIT_FILEMODE_LINK);

	/* test that we fail to add some invalid (missing) blobs and trees */
	FUNC2(false, invalid_id, GIT_FILEMODE_BLOB);
	FUNC2(false, invalid_id, GIT_FILEMODE_BLOB_EXECUTABLE);
	FUNC2(false, invalid_id, GIT_FILEMODE_LINK);

	/* test that we validate the types of objects */
	FUNC2(false, valid_commit_id, GIT_FILEMODE_BLOB);
	FUNC2(false, valid_tree_id, GIT_FILEMODE_BLOB_EXECUTABLE);
	FUNC2(false, valid_commit_id, GIT_FILEMODE_LINK);

	/*
	 * Ensure that there we can disable validation
	 */

	FUNC0(FUNC1(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));

	/* ensure that we can add some actually good entries */
	FUNC2(true, valid_blob_id, GIT_FILEMODE_BLOB);
	FUNC2(true, valid_blob_id, GIT_FILEMODE_BLOB_EXECUTABLE);
	FUNC2(true, valid_blob_id, GIT_FILEMODE_LINK);

	/* test that we can now add some invalid (missing) blobs and trees */
	FUNC2(true, invalid_id, GIT_FILEMODE_BLOB);
	FUNC2(true, invalid_id, GIT_FILEMODE_BLOB_EXECUTABLE);
	FUNC2(true, invalid_id, GIT_FILEMODE_LINK);

	/* test that we do not validate the types of objects */
	FUNC2(true, valid_commit_id, GIT_FILEMODE_BLOB);
	FUNC2(true, valid_tree_id, GIT_FILEMODE_BLOB_EXECUTABLE);
	FUNC2(true, valid_commit_id, GIT_FILEMODE_LINK);
}