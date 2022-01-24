#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {TYPE_2__ member_0; } ;
struct TYPE_7__ {char* member_3; int /*<<< orphan*/  id; int /*<<< orphan*/  member_2; TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ git_tree_update ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  GIT_TREE_UPDATE_UPSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_3__*) ; 

void FUNC4(void)
{
	int i;
	git_oid tree_updater_id;
	git_tree_update updates[] = {
		{ GIT_TREE_UPDATE_UPSERT, {{0}}, GIT_FILEMODE_BLOB, "a/dir/blob"},
		{ GIT_TREE_UPDATE_UPSERT, {{0}}, GIT_FILEMODE_TREE, "a/dir/blob"},
	};

	for (i = 0; i < 2; i++) {
		FUNC1(FUNC2(&updates[i].id, "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd"));
	}

	FUNC0(FUNC3(&tree_updater_id, g_repo, NULL, 2, updates));
}