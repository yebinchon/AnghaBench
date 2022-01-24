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

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tree ; 

void FUNC3(void)
{
	git_tree_entry *e;

	FUNC0(tree, "README", "README");
	FUNC0(tree, "ab/de/fgh/1.txt", "1.txt");
	FUNC0(tree, "ab/de/fgh", "fgh");
	FUNC0(tree, "ab/de/fgh/", "fgh");
	FUNC0(tree, "ab/de", "de");
	FUNC0(tree, "ab/", "ab");
	FUNC0(tree, "ab/de/", "de");

	FUNC1(GIT_ENOTFOUND, FUNC2(&e, tree, "i-do-not-exist.txt"));
	FUNC1(GIT_ENOTFOUND, FUNC2(&e, tree, "README/"));
	FUNC1(GIT_ENOTFOUND, FUNC2(&e, tree, "ab/de/fgh/i-do-not-exist.txt"));
	FUNC1(GIT_ENOTFOUND, FUNC2(&e, tree, "nope/de/fgh/1.txt"));
	FUNC1(GIT_ENOTFOUND, FUNC2(&e, tree, "ab/me-neither/fgh/2.txt"));
	FUNC1(GIT_ENOTFOUND, FUNC2(&e, tree, "ab/me-neither/fgh/2.txt/"));
}