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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 

void FUNC17(void)
{
	git_repository *repo;
	git_index *index;

	FUNC16("index_test", 0770);

	FUNC4(FUNC15(&repo, "index_test", 0));
	FUNC4(FUNC14(&index, repo));
	FUNC1(0, (int)FUNC6(index));

	FUNC16("index_test/a", 0770);
	FUNC3("index_test/a/1.txt", NULL);
	FUNC3("index_test/a/2.txt", NULL);
	FUNC3("index_test/a/3.txt", NULL);
	FUNC3("index_test/b.txt", NULL);

	FUNC4(FUNC5(index, "a/1.txt"));
	FUNC4(FUNC5(index, "a/2.txt"));
	FUNC4(FUNC5(index, "a/3.txt"));
	FUNC4(FUNC5(index, "b.txt"));
	FUNC4(FUNC12(index));

	FUNC4(FUNC9(index, true)); /* reload */
	FUNC1(4, (int)FUNC6(index));
	FUNC0(FUNC8(index, "a/1.txt", 0) != NULL);
	FUNC0(FUNC8(index, "a/2.txt", 0) != NULL);
	FUNC0(FUNC8(index, "b.txt", 0) != NULL);

	FUNC4(FUNC10(index, "a/1.txt", 0));
	FUNC4(FUNC12(index));

	FUNC4(FUNC9(index, true)); /* reload */
	FUNC1(3, (int)FUNC6(index));
	FUNC0(FUNC8(index, "a/1.txt", 0) == NULL);
	FUNC0(FUNC8(index, "a/2.txt", 0) != NULL);
	FUNC0(FUNC8(index, "b.txt", 0) != NULL);

	FUNC4(FUNC11(index, "a", 0));
	FUNC4(FUNC12(index));

	FUNC4(FUNC9(index, true)); /* reload */
	FUNC1(1, (int)FUNC6(index));
	FUNC0(FUNC8(index, "a/1.txt", 0) == NULL);
	FUNC0(FUNC8(index, "a/2.txt", 0) == NULL);
	FUNC0(FUNC8(index, "b.txt", 0) != NULL);

	FUNC7(index);
	FUNC13(repo);
	FUNC2("index_test");
}