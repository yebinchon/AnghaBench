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
typedef  int /*<<< orphan*/  git_indexwriter ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ELOCKED ; 
 int /*<<< orphan*/  GIT_INDEXWRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_repository *repo;
	git_index *index;
	git_indexwriter one = GIT_INDEXWRITER_INIT,
		two = GIT_INDEXWRITER_INIT;

	repo = FUNC3("testrepo.git");

	FUNC1(FUNC9(&index, repo));
	FUNC1(FUNC8(&one, index));

	FUNC0(GIT_ELOCKED, FUNC8(&two, index));
	FUNC0(GIT_ELOCKED, FUNC5(index));

	FUNC1(FUNC7(&one));

	FUNC1(FUNC5(index));

	FUNC6(&one);
	FUNC6(&two);
	FUNC4(index);
	FUNC2();
}