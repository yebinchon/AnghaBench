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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_options ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 

void FUNC15(void)
{
	git_object *obj;
	git_repository *cloned;
	git_reference *cloned_head;

	FUNC4(FUNC5(&g_repo, FUNC3("testrepo.git"), "./foo", &g_options));

	FUNC4(FUNC14(&obj, g_repo, "master~1"));
	FUNC4(FUNC13(g_repo, FUNC7(obj)));

	FUNC4(FUNC5(&cloned, "./foo", "./foo1", &g_options));

	FUNC0(FUNC12(cloned));

	FUNC4(FUNC11(&cloned_head, cloned));
	FUNC1(FUNC7(obj), FUNC9(cloned_head));

	FUNC6(obj);
	FUNC8(cloned_head);
	FUNC10(cloned);

	FUNC2("./foo1");
}