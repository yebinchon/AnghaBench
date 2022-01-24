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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * repo ; 
 int /*<<< orphan*/ * tree ; 

void FUNC6(void)
{
	git_oid id;
	const char *tree_with_subtrees_oid = "ae90f12eea699729ed24555e40b9fd669da12a12";

	FUNC2(FUNC4(&repo, FUNC1("testrepo.git")));
	FUNC0(repo != NULL);

	FUNC2(FUNC3(&id, tree_with_subtrees_oid));
	FUNC2(FUNC5(&tree, repo, &id));
	FUNC0(tree != NULL);
}