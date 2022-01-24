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
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	git_oid commit_id;
	git_commit *commit;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_index *index;

	FUNC3(FUNC12(&commit_id, "afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6"));
	FUNC3(FUNC7(&commit, g_repo, &commit_id));

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC3(FUNC5(g_repo, (const git_object *)commit, &opts));

	FUNC3(FUNC14(&index, g_repo));
	FUNC3(FUNC10(index, "executable.txt", 0));

	FUNC4("executable.txt");
	FUNC2("testrepo/executable.txt", "This is the conflict file.\n");

	FUNC4("other.txt");
	FUNC2("testrepo/other.txt", "This is another conflict file.\n");

	FUNC3(FUNC11(index));

	FUNC3(FUNC5(g_repo, (const git_object *)commit, &opts));

	FUNC1(NULL, FUNC9(index, "executable.txt", 1));
	FUNC1(NULL, FUNC9(index, "executable.txt", 2));
	FUNC1(NULL, FUNC9(index, "executable.txt", 3));

	FUNC1(NULL, FUNC9(index, "other.txt", 1));
	FUNC1(NULL, FUNC9(index, "other.txt", 2));
	FUNC1(NULL, FUNC9(index, "other.txt", 3));

	FUNC0(!FUNC13("testrepo/other.txt"));

	FUNC6(commit);
	FUNC8(index);
}