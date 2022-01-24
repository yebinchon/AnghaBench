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
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_9__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {int flags; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 int GIT_ITERATOR_DONT_IGNORE_CASE ; 
 int GIT_ITERATOR_INCLUDE_TREES ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,char const**,size_t,char const**) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  git__strcmp_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 

void FUNC10(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_vector filelist;
	git_tree *tree;

	const char *expected[] = { "subdir/", "subdir/README", "subdir/new.txt",
		"subdir/subdir2/", "subdir/subdir2/README", "subdir/subdir2/new.txt" };
	size_t expected_len = 6;

	g_repo = FUNC1("testrepo2");
	FUNC5(&tree, g_repo);

	FUNC0(FUNC8(&filelist, 100, &git__strcmp_cb));
	FUNC0(FUNC9(&filelist, "subdir"));

	i_opts.pathlist.strings = (char **)filelist.contents;
	i_opts.pathlist.count = filelist.length;
	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE | GIT_ITERATOR_INCLUDE_TREES;

	FUNC0(FUNC3(&i, tree, &i_opts));
	FUNC2(i, expected_len, expected, expected_len, expected);
	FUNC4(i);

	FUNC6(tree);
	FUNC7(&filelist);
}