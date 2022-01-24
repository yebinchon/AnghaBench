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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	git_index *index;
	git_tree *head;

	g_repo = FUNC2("testrepo");

	/* reset index to match HEAD */
	FUNC1(FUNC6(&head, g_repo));
	FUNC1(FUNC7(&index, g_repo));
	FUNC1(FUNC4(index, head));
	FUNC1(FUNC5(index));
	FUNC8(head);
	FUNC3(index);

	/* do some ranged iterator checks toggling case sensitivity */
	FUNC0(g_repo, "B", "C", false, 0);
	FUNC0(g_repo, "B", "C", true, 1);
	FUNC0(g_repo, "a", "z", false, 3);
	FUNC0(g_repo, "a", "z", true, 4);
}