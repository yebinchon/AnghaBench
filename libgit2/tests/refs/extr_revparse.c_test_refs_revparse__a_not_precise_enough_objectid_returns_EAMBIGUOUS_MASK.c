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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EAMBIGUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 

void FUNC10(void)
{
	git_repository *repo;
	git_index *index;
	git_object *obj;

	repo = FUNC4("testrepo");

	FUNC1("testrepo/one.txt", "aabqhq\n");
	FUNC1("testrepo/two.txt", "aaazvc\n");
	
	FUNC2(FUNC8(&index, repo));
	FUNC2(FUNC5(index, "one.txt"));
	FUNC2(FUNC5(index, "two.txt"));
	
	FUNC0(FUNC9(&obj, repo, "dea509d0"), GIT_EAMBIGUOUS);

	FUNC2(FUNC9(&obj, repo, "dea509d09"));

	FUNC7(obj);
	FUNC6(index);
	FUNC3();
}