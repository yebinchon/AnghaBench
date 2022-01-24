#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(void)
{
#ifndef GIT_WIN32
	git_oid executable_oid;
	git_commit *commit;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	/* test a freshly added executable */
	FUNC2(FUNC7(&executable_oid, "afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6"));
	FUNC2(FUNC6(&commit, g_repo, &executable_oid));

	FUNC2(FUNC4(g_repo, (const git_object *)commit, &opts));
	FUNC1(FUNC0(FUNC8("executable.txt")));

	FUNC5(commit);


	/* Now start with a commit which has a text file */
	FUNC2(FUNC7(&executable_oid, "cf80f8de9f1185bf3a05f993f6121880dd0cfbc9"));
	FUNC2(FUNC6(&commit, g_repo, &executable_oid));

	FUNC2(FUNC4(g_repo, (const git_object *)commit, &opts));
	FUNC1(!FUNC0(FUNC8("a/b.txt")));

	FUNC5(commit);


	/* And then check out to a commit which converts the text file to an executable */
	FUNC2(FUNC7(&executable_oid, "144344043ba4d4a405da03de3844aa829ae8be0e"));
	FUNC2(FUNC6(&commit, g_repo, &executable_oid));

	FUNC2(FUNC4(g_repo, (const git_object *)commit, &opts));
	FUNC1(FUNC0(FUNC8("a/b.txt")));

	FUNC5(commit);


	/* Finally, check out the text file again and check that the exec bit is cleared */
	FUNC2(FUNC7(&executable_oid, "cf80f8de9f1185bf3a05f993f6121880dd0cfbc9"));
	FUNC2(FUNC6(&commit, g_repo, &executable_oid));

	FUNC2(FUNC4(g_repo, (const git_object *)commit, &opts));
	FUNC1(!FUNC0(FUNC8("a/b.txt")));

	FUNC5(commit);
#else
	cl_skip();
#endif
}