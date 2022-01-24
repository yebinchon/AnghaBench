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
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

git_repository *FUNC6(void)
{
	git_repository *repo = FUNC2("submodule_with_path");

	FUNC0("testrepo.git");
	FUNC5("submodule_with_path/lib", 0777);
	FUNC5("submodule_with_path/lib/testrepo", 0777);

	FUNC3(cleanup_fixture_submodules, "testrepo.git");

	FUNC1(FUNC4(repo, 1));

	return repo;
}