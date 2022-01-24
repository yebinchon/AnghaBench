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
 int /*<<< orphan*/  GIT_EBAREREPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_repository *bare_repo;
	git_index *index;

	FUNC2(FUNC7(&bare_repo, FUNC1("testrepo.git")));
	FUNC2(FUNC6(&index, bare_repo));

	FUNC0(GIT_EBAREREPO, FUNC3(index, "test.txt"));

	FUNC4(index);
	FUNC5(bare_repo);
}