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
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_oid id;
	git_tree *tree;
	const git_tree_entry *entry;

	FUNC2(&id, "0810fb7818088ff5ac41ee49199b51473b1bd6c7");
	FUNC1(FUNC7(&tree, repo, &id));

	entry = FUNC3(tree, "ListaTeste.xml");
	FUNC0(FUNC4(entry), GIT_FILEMODE_BLOB);
	FUNC0(FUNC5(entry), 0100600);

	FUNC6(tree);
}