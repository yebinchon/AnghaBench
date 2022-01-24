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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 

git_tree *FUNC6(
	git_repository *repo,
	const char *partial_oid)
{
	size_t len = FUNC5(partial_oid);
	git_oid oid;
	git_object *obj = NULL;
	git_tree *tree = NULL;

	if (FUNC4(&oid, partial_oid, len) == 0)
		FUNC0(FUNC2(&obj, repo, &oid, len, GIT_OBJECT_ANY));

	FUNC0(FUNC3((git_object **) &tree, obj, GIT_OBJECT_TREE));
	FUNC1(obj);
	return tree;
}