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
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* parent_id_str ; 
 char* tree_id_str ; 

void FUNC5(void)
{
	git_oid expected_id, tree_id, parent_id, commit_id;

	FUNC1(FUNC3(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));

	/* this is a valid tree and parent */
	FUNC4(&tree_id, tree_id_str);
	FUNC4(&parent_id, parent_id_str);

	FUNC4(&expected_id, "c8571bbec3a72c4bcad31648902e5a453f1adece");
	FUNC1(FUNC2(&commit_id, &tree_id, &parent_id));
	FUNC0(&expected_id, &commit_id);

	/* this is a wholly invented tree id */
	FUNC4(&tree_id, "1234567890123456789012345678901234567890");
	FUNC4(&parent_id, parent_id_str);

	FUNC4(&expected_id, "996008340b8e68d69bf3c28d7c57fb7ec3c8e202");
	FUNC1(FUNC2(&commit_id, &tree_id, &parent_id));
	FUNC0(&expected_id, &commit_id);

	/* this is a wholly invented parent id */
	FUNC4(&tree_id, tree_id_str);
	FUNC4(&parent_id, "1234567890123456789012345678901234567890");

	FUNC4(&expected_id, "d78f660cab89d9791ca6714b57978bf2a7e709fd");
	FUNC1(FUNC2(&commit_id, &tree_id, &parent_id));
	FUNC0(&expected_id, &commit_id);

	/* these are legitimate objects, but of the wrong type */
	FUNC4(&tree_id, parent_id_str);
	FUNC4(&parent_id, tree_id_str);

	FUNC4(&expected_id, "5d80c07414e3f18792949699dfcacadf7748f361");
	FUNC1(FUNC2(&commit_id, &tree_id, &parent_id));
	FUNC0(&expected_id, &commit_id);
}