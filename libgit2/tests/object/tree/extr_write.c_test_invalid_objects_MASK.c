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
typedef  int /*<<< orphan*/  git_treebuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* blob_oid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* first_tree ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(bool should_allow_invalid)
{
	git_treebuilder *builder;
	git_oid valid_blob_id, invalid_blob_id, valid_tree_id, invalid_tree_id;

#define assert_allowed(expr) \
	clar__assert(!(expr) == should_allow_invalid, __FILE__, __LINE__, \
		(should_allow_invalid ? \
		 "Expected function call to succeed: " #expr : \
		 "Expected function call to fail: " #expr), \
		NULL, 1)

	FUNC1(FUNC2(&valid_blob_id, blob_oid));
	FUNC1(FUNC2(&invalid_blob_id,
		"1234567890123456789012345678901234567890"));
	FUNC1(FUNC2(&valid_tree_id, first_tree));
	FUNC1(FUNC2(&invalid_tree_id,
		"0000000000111111111122222222223333333333"));

	FUNC1(FUNC5(&builder, g_repo, NULL));

	/* test valid blobs and trees (these should always pass) */
	FUNC1(FUNC4(NULL, builder, "file.txt", &valid_blob_id, GIT_FILEMODE_BLOB));
	FUNC1(FUNC4(NULL, builder, "folder", &valid_tree_id, GIT_FILEMODE_TREE));

	/* replace valid files and folders with invalid ones */
	assert_allowed(FUNC4(NULL, builder, "file.txt", &invalid_blob_id, GIT_FILEMODE_BLOB));
	assert_allowed(FUNC4(NULL, builder, "folder", &invalid_blob_id, GIT_FILEMODE_BLOB));

	/* insert new invalid files and folders */
	assert_allowed(FUNC4(NULL, builder, "invalid_file.txt", &invalid_blob_id, GIT_FILEMODE_BLOB));
	assert_allowed(FUNC4(NULL, builder, "invalid_folder", &invalid_blob_id, GIT_FILEMODE_BLOB));

	/* insert valid blobs as trees and trees as blobs */
	assert_allowed(FUNC4(NULL, builder, "file_as_folder", &valid_blob_id, GIT_FILEMODE_TREE));
	assert_allowed(FUNC4(NULL, builder, "folder_as_file.txt", &valid_tree_id, GIT_FILEMODE_BLOB));

#undef assert_allowed

	FUNC3(builder);
}