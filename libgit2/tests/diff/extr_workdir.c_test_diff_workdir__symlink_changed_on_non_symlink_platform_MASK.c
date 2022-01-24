#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  length; scalar_t__ contents; } ;
typedef  TYPE_4__ git_vector ;
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_15__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_19__ {TYPE_1__ pathspec; } ;
typedef  TYPE_5__ git_diff_options ;
struct TYPE_17__ {int /*<<< orphan*/  mode; } ;
struct TYPE_16__ {int /*<<< orphan*/  mode; } ;
struct TYPE_20__ {TYPE_3__ new_file; TYPE_2__ old_file; } ;
typedef  TYPE_6__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_21__ {int /*<<< orphan*/  files; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ diff_expects ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIGMAP_SYMLINKS ; 
 TYPE_5__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_FILEMODE_LINK ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 TYPE_4__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,char const*) ; 

void FUNC22(void)
{
	git_tree *tree;
	git_diff *diff;
	diff_expects exp = {0};
	const git_diff_delta *delta;
	const char *commit = "7fccd7";
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_vector pathlist = GIT_VECTOR_INIT;
	int symlinks;

	g_repo = FUNC5("unsymlinked.git");

	FUNC3(FUNC15(&symlinks, g_repo, GIT_CONFIGMAP_SYMLINKS));

	if (symlinks)
		FUNC7();

	FUNC3(FUNC19(&pathlist, "include/Nu/Nu.h"));

	opts.pathspec.strings = (char **)pathlist.contents;
	opts.pathspec.count = pathlist.length;

	FUNC6(FUNC20("symlink", 0777));
	FUNC3(FUNC16(g_repo, "symlink", false));

	FUNC0((tree = FUNC21(g_repo, commit)) != NULL);

	/* first, do the diff with the original contents */

	FUNC3(FUNC13("symlink/include/Nu/Nu.h", 0755));
	FUNC2("symlink/include/Nu/Nu.h", "../../objc/Nu.h");

	FUNC3(FUNC12(&diff, g_repo, tree, &opts));
	FUNC1(0, FUNC11(diff));
	FUNC9(diff);

	/* now update the contents and expect a difference, but that the file
	 * mode has persisted as a symbolic link.
	 */

	FUNC4("symlink/include/Nu/Nu.h", "awesome content\n");

	FUNC3(FUNC12(&diff, g_repo, tree, &opts));

	FUNC3(FUNC8(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
	FUNC1(1, exp.files);

	FUNC1(1, FUNC11(diff));
	delta = FUNC10(diff, 0);
	FUNC1(GIT_FILEMODE_LINK, delta->old_file.mode);
	FUNC1(GIT_FILEMODE_LINK, delta->new_file.mode);

	FUNC9(diff);

	FUNC3(FUNC14("symlink", NULL, GIT_RMDIR_REMOVE_FILES));

	FUNC17(tree);
	FUNC18(&pathlist);
}