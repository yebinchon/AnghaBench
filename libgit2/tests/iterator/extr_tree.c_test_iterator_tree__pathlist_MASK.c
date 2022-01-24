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
struct TYPE_11__ {char* start; char* end; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  git__strcmp_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 

void FUNC11(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_vector filelist;
	git_tree *tree;
	bool default_icase;
	int expect;

	FUNC0(FUNC9(&filelist, 100, &git__strcmp_cb));
	FUNC0(FUNC10(&filelist, "a"));
	FUNC0(FUNC10(&filelist, "B"));
	FUNC0(FUNC10(&filelist, "c"));
	FUNC0(FUNC10(&filelist, "D"));
	FUNC0(FUNC10(&filelist, "e"));
	FUNC0(FUNC10(&filelist, "k.a"));
	FUNC0(FUNC10(&filelist, "k.b"));
	FUNC0(FUNC10(&filelist, "k/1"));
	FUNC0(FUNC10(&filelist, "k/a"));
	FUNC0(FUNC10(&filelist, "kZZZZZZZ"));
	FUNC0(FUNC10(&filelist, "L/1"));

	g_repo = FUNC1("icase");
	FUNC6(&tree, g_repo);

	/* All indexfilelist iterator tests are "autoexpand with no tree entries" */
	/* In this test we DO NOT force a case on the iterators and verify default behavior. */

	i_opts.pathlist.strings = (char **)filelist.contents;
	i_opts.pathlist.count = filelist.length;

	FUNC0(FUNC3(&i, tree, &i_opts));
	FUNC2(i, 8, NULL, 8, NULL);
	FUNC4(i);

	i_opts.start = "c";
	i_opts.end = NULL;
	FUNC0(FUNC3(&i, tree, &i_opts));
	default_icase = FUNC5(i);
	/* (c D e k/1 k/a L ==> 6) vs (c e k/1 k/a ==> 4) */
	expect = ((default_icase) ? 6 : 4);
	FUNC2(i, expect, NULL, expect, NULL);
	FUNC4(i);

	i_opts.start = NULL;
	i_opts.end = "e";
	FUNC0(FUNC3(&i, tree, &i_opts));
	default_icase = FUNC5(i);
	/* (a B c D e ==> 5) vs (B D L/1 a c e ==> 6) */
	expect = ((default_icase) ? 5 : 6);
	FUNC2(i, expect, NULL, expect, NULL);
	FUNC4(i);

	FUNC8(&filelist);
	FUNC7(tree);
}