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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* parent_id_str ; 
 char* tree_id_str ; 

void FUNC4(void)
{
	git_oid tree_id, parent_id, commit_id;

	/* this is a valid tree and parent */
	FUNC3(&tree_id, tree_id_str);
	FUNC3(&parent_id, parent_id_str);
	FUNC1(FUNC2(&commit_id, &tree_id, &parent_id));

	/* this is a wholly invented tree id */
	FUNC3(&tree_id, "1234567890123456789012345678901234567890");
	FUNC3(&parent_id, parent_id_str);
	FUNC0(FUNC2(&commit_id, &tree_id, &parent_id));

	/* this is a wholly invented parent id */
	FUNC3(&tree_id, tree_id_str);
	FUNC3(&parent_id, "1234567890123456789012345678901234567890");
	FUNC0(FUNC2(&commit_id, &tree_id, &parent_id));

	/* these are legitimate objects, but of the wrong type */
	FUNC3(&tree_id, parent_id_str);
	FUNC3(&parent_id, tree_id_str);
	FUNC0(FUNC2(&commit_id, &tree_id, &parent_id));
}