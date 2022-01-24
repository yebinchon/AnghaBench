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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 

void FUNC15(void)
{
	git_repository *repo;
	git_index *index;

	FUNC14("index_test", 0770);

	FUNC3(FUNC13(&repo, "index_test", 0));
	FUNC3(FUNC12(&index, repo));
	FUNC0(FUNC5(index) == 0);

	FUNC2("index_test/hello", NULL);
	FUNC3(FUNC4(index, "hello"));
	FUNC3(FUNC10(index));

	FUNC3(FUNC8(index, true)); /* reload */
	FUNC0(FUNC5(index) == 1);
	FUNC0(FUNC7(index, "hello", 0) != NULL);

	FUNC3(FUNC9(index, "hello", 0));
	FUNC3(FUNC10(index));

	FUNC3(FUNC8(index, true)); /* reload */
	FUNC0(FUNC5(index) == 0);
	FUNC0(FUNC7(index, "hello", 0) == NULL);

	FUNC6(index);
	FUNC11(repo);
	FUNC1("index_test");
}