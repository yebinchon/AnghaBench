#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  length; scalar_t__ contents; } ;
typedef  TYPE_2__ git_vector ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_9__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; TYPE_1__ pathspec; } ;
typedef  TYPE_3__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_DISABLE_PATHSPEC_MATCH ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_IGNORED ; 
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ; 
 TYPE_2__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

void FUNC13(void)
{
	git_index *index;
	git_diff *diff;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_vector pathlist = GIT_VECTOR_INIT;

	FUNC11(&pathlist, "foobar/asdf");
	FUNC11(&pathlist, "subdir/asdf");
	FUNC11(&pathlist, "ignored/asdf");

	g_repo = FUNC3("status");

	FUNC1("status/.gitignore", ".gitignore\n" "ignored/\n");

	FUNC4(FUNC12("status/foobar", 0777));
	FUNC1("status/foobar/one", "one\n");

	FUNC4(FUNC12("status/ignored", 0777));
	FUNC1("status/ignored/one", "one\n");
	FUNC1("status/ignored/two", "two\n");
	FUNC1("status/ignored/three", "three\n");

	FUNC2(FUNC9(&index, g_repo));

	opts.flags = GIT_DIFF_INCLUDE_IGNORED;
	opts.pathspec.strings = (char **)pathlist.contents;
	opts.pathspec.count = pathlist.length;

	FUNC2(FUNC6(&diff, g_repo, index, &opts));
	FUNC0(0, FUNC7(diff));
	FUNC5(diff);

	opts.flags |= GIT_DIFF_DISABLE_PATHSPEC_MATCH;

	FUNC2(FUNC6(&diff, g_repo, index, &opts));
	FUNC0(0, FUNC7(diff));
	FUNC5(diff);

	FUNC8(index);
	FUNC10(&pathlist);
}