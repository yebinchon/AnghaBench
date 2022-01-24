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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tree ; 

void FUNC2(void)
{
	git_tree_entry *e;

	FUNC0(FUNC1(&e, tree, "/"));
	FUNC0(FUNC1(&e, tree, "/ab"));
	FUNC0(FUNC1(&e, tree, "/ab/de"));
	FUNC0(FUNC1(&e, tree, "ab//de"));
}