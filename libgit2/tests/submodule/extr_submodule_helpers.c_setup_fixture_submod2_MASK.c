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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cleanup_fixture_submodules ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

git_repository *FUNC8(void)
{
	git_repository *repo = FUNC2("submod2");

	FUNC0("submod2_target");
	FUNC6("submod2_target/.gitted", "submod2_target/.git");

	FUNC7(FUNC5(repo));
	FUNC6("submod2/not-submodule/.gitted", "submod2/not-submodule/.git");
	FUNC6("submod2/not/.gitted", "submod2/not/.git");

	FUNC3(cleanup_fixture_submodules, "submod2_target");

	FUNC1(FUNC4(repo, 1));

	return repo;
}