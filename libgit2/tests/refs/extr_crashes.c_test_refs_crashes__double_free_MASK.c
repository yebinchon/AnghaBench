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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_repository *repo;
	git_reference *ref, *ref2;
	const char *REFNAME = "refs/heads/xxx";

	repo = FUNC3("testrepo.git");
	FUNC1(FUNC7(&ref, repo, REFNAME, "refs/heads/master", 0, NULL));
	FUNC1(FUNC6(&ref2, repo, REFNAME));
	FUNC1(FUNC4(ref));
	FUNC5(ref);
	FUNC5(ref2);

	/* reference is gone from disk, so reloading it will fail */
	FUNC0(FUNC6(&ref2, repo, REFNAME));

	FUNC2();
}