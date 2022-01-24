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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_index *index;
	git_reference *ref;
	git_annotated_commit *annotated;

	g_repo = FUNC3("merge-resolve");
	FUNC1(FUNC12(&index, g_repo));

	FUNC0(g_repo, 0, 0, 0, 0, 0, 0, 0, 0);

	FUNC1(FUNC11(&ref, g_repo, "refs/heads/branch"));
	FUNC1(FUNC5(&annotated, g_repo, ref));

	FUNC1(FUNC9(g_repo, (const git_annotated_commit**)&annotated, 1, NULL, NULL));
	FUNC0(g_repo, 0, 1, 2, 0, 0, 0, 0, 1);

	FUNC2("merge-resolve/conflicting.txt");

	FUNC1(FUNC6(index, NULL, 0, NULL, NULL));
	FUNC1(FUNC8(index));
	FUNC0(g_repo, 0, 2, 2, 0, 0, 0, 0, 0);

	FUNC4(annotated);
	FUNC10(ref);
	FUNC7(index);
}