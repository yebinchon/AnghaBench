#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_6__ {int member_1; char** strings; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_pathspec_match_list ;
typedef  int /*<<< orphan*/  git_pathspec ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_5__ {int /*<<< orphan*/ * path; } ;
struct TYPE_7__ {scalar_t__ status; TYPE_1__ new_file; } ;

/* Variables and functions */
 int GIT_DELTA_ADDED ; 
 int GIT_DELTA_DELETED ; 
 int GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_PATHSPEC_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char const*) ; 

void FUNC17(void)
{
	const char *a_commit = "26a125ee"; /* the current HEAD */
	const char *b_commit = "0017bd4a"; /* the start */
	git_tree *a = FUNC16(g_repo, a_commit);
	git_tree *b = FUNC16(g_repo, b_commit);
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_strarray paths = { NULL, 1 };
	char *path;
	git_pathspec *ps;
	git_pathspec_match_list *matches;

	FUNC0(a);
	FUNC0(b);

	path = "*_file";
	paths.strings = &path;
	FUNC3(FUNC14(&ps, &paths));

	FUNC3(FUNC13(&matches, a, GIT_PATHSPEC_DEFAULT, ps));
	FUNC1(7, (int)FUNC11(matches));
	FUNC2("current_file", FUNC10(matches,0));
	FUNC0(FUNC9(matches,0) == NULL);
	FUNC12(matches);

	FUNC3(FUNC5(&diff, g_repo, NULL, a, &opts));

	FUNC3(FUNC8(
		&matches, diff, GIT_PATHSPEC_DEFAULT, ps));
	FUNC1(7, (int)FUNC11(matches));
	FUNC0(FUNC9(matches, 0) != NULL);
	FUNC0(FUNC10(matches, 0) == NULL);
	FUNC2("current_file",
		FUNC9(matches,0)->new_file.path);
	FUNC1(GIT_DELTA_ADDED,
		(int)FUNC9(matches,0)->status);
	FUNC12(matches);

	FUNC4(diff);
	diff = NULL;

	FUNC3(FUNC5(&diff, g_repo, a, b, &opts));

	FUNC3(FUNC8(
		&matches, diff, GIT_PATHSPEC_DEFAULT, ps));
	FUNC1(3, (int)FUNC11(matches));
	FUNC0(FUNC9(matches, 0) != NULL);
	FUNC0(FUNC10(matches, 0) == NULL);
	FUNC2("subdir/current_file",
		FUNC9(matches,0)->new_file.path);
	FUNC1(GIT_DELTA_DELETED,
		(int)FUNC9(matches,0)->status);
	FUNC12(matches);

	FUNC4(diff);
	diff = NULL;

	FUNC3(FUNC6(&diff, g_repo, a, &opts));

	FUNC3(FUNC8(
		&matches, diff, GIT_PATHSPEC_DEFAULT, ps));
	FUNC1(4, (int)FUNC11(matches));
	FUNC0(FUNC9(matches, 0) != NULL);
	FUNC0(FUNC10(matches, 0) == NULL);
	FUNC2("modified_file",
		FUNC9(matches,0)->new_file.path);
	FUNC1(GIT_DELTA_MODIFIED,
		(int)FUNC9(matches,0)->status);
	FUNC12(matches);

	FUNC4(diff);
	diff = NULL;

	FUNC15(a);
	FUNC15(b);
	FUNC7(ps);
}