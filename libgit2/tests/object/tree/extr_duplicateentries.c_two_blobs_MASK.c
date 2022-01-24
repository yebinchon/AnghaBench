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
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(git_treebuilder *bld)
{
	git_oid oid;
	const git_tree_entry *entry;

	FUNC0(FUNC1(&oid,
		"a8233120f6ad708f843d861ce2b7228ec4e3dec6"));	/* blob oid (README) */

	FUNC0(FUNC2(
		&entry,	bld, "duplicate", &oid,
		GIT_FILEMODE_BLOB));

	FUNC0(FUNC1(&oid,
		"a71586c1dfe8a71c6cbf6c129f404c5642ff31bd"));	/* blob oid (new.txt) */

	FUNC0(FUNC2(
		&entry,	bld, "duplicate", &oid,
		GIT_FILEMODE_BLOB));
}