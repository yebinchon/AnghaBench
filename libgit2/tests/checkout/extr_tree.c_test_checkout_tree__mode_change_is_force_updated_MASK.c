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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  g_opts ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 

void FUNC17(void)
{
	git_index *index;
	git_reference *head;
	git_object *obj;

	if (!FUNC3())
		FUNC5();

	FUNC0(g_repo, "master");
	FUNC2(FUNC14(&index, g_repo));
	FUNC2(FUNC13(&head, g_repo));
	FUNC2(FUNC12(&obj, head, GIT_OBJECT_COMMIT));

	FUNC2(FUNC15(g_repo, obj, GIT_RESET_HARD, NULL));
	FUNC1(g_repo, 0);

	/* update the mode on-disk */
	FUNC4(FUNC16("testrepo/README", 0755));

	FUNC1(g_repo, 1);
	FUNC2(FUNC6(g_repo, obj, &g_opts));
	FUNC1(g_repo, 0);

	/* update the mode on-disk and in the index */
	FUNC4(FUNC16("testrepo/README", 0755));
	FUNC4(FUNC7(index, "README"));

	FUNC2(FUNC9(index));
	FUNC1(g_repo, 1);

	FUNC2(FUNC6(g_repo, obj, &g_opts));
	FUNC2(FUNC9(index));

	FUNC1(g_repo, 0);

	FUNC10(obj);
	FUNC11(head);
	FUNC8(index);
}