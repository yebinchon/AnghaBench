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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  one_blob_and_one_tree ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  two_blobs ; 

void FUNC2(void)
{
	git_oid tid;

	FUNC1(&tid, two_blobs);
	FUNC0(&tid, "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd", GIT_FILEMODE_BLOB);

	FUNC1(&tid, one_blob_and_one_tree);
	FUNC0(&tid, "4e0883eeeeebc1fb1735161cea82f7cb5fab7e63", GIT_FILEMODE_TREE);
}