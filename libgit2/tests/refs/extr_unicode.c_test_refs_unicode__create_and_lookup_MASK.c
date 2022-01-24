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
 char const* REFNAME_DECOMPOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * repo ; 

void FUNC10(void)
{
	git_reference *ref0, *ref1, *ref2;
	git_repository *repo2;

	const char *REFNAME = "refs/heads/" "\303\205" "ngstr" "\303\266" "m";
	const char *master = "refs/heads/master";

	/* Create the reference */
	FUNC2(FUNC5(&ref0, repo, master));
	FUNC2(FUNC3(
		&ref1, repo, REFNAME, FUNC7(ref0), 0, NULL));
	FUNC1(REFNAME, FUNC6(ref1));
	FUNC4(ref0);

	/* Lookup the reference in a different instance of the repository */
	FUNC2(FUNC9(&repo2, "testrepo.git"));

	FUNC2(FUNC5(&ref2, repo2, REFNAME));
	FUNC0(FUNC7(ref1), FUNC7(ref2));
	FUNC1(REFNAME, FUNC6(ref2));
	FUNC4(ref2);

#if GIT_USE_ICONV
	/* Lookup reference by decomposed unicode name */

#define REFNAME_DECOMPOSED "refs/heads/" "A" "\314\212" "ngstro" "\314\210" "m"

	cl_git_pass(git_reference_lookup(&ref2, repo2, REFNAME_DECOMPOSED));
	cl_assert_equal_oid(git_reference_target(ref1), git_reference_target(ref2));
	cl_assert_equal_s(REFNAME, git_reference_name(ref2));
	git_reference_free(ref2);
#endif

	/* Cleanup */

	FUNC4(ref1);
	FUNC8(repo2);
}