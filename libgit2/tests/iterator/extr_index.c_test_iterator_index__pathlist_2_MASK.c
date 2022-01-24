#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  length; scalar_t__ contents; } ;
typedef  TYPE_2__ git_vector ;
struct TYPE_10__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_12__ {char* start; char* end; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 TYPE_2__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  git__strcmp_cb ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 

void FUNC11(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index;
	git_vector filelist = GIT_VECTOR_INIT;
	int default_icase, expect;

	g_repo = FUNC1("icase");

	FUNC0(FUNC7(&index, g_repo));

	FUNC0(FUNC9(&filelist, 100, &git__strcmp_cb));
	FUNC0(FUNC10(&filelist, "0"));
	FUNC0(FUNC10(&filelist, "c"));
	FUNC0(FUNC10(&filelist, "D"));
	FUNC0(FUNC10(&filelist, "e"));
	FUNC0(FUNC10(&filelist, "k/"));
	FUNC0(FUNC10(&filelist, "k.a"));
	FUNC0(FUNC10(&filelist, "k.b"));
	FUNC0(FUNC10(&filelist, "kZZZZZZZ"));

	/* In this test we DO NOT force a case setting on the index. */
	default_icase = ((FUNC3(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0);

	i_opts.pathlist.strings = (char **)filelist.contents;
	i_opts.pathlist.count = filelist.length;

	i_opts.start = "b";
	i_opts.end = "k/D";

	/* (c D e k/1 k/a k/B k/c k/D) vs (c e k/1 k/B k/D) */
	expect = default_icase ? 8 : 5;

	FUNC0(FUNC5(&i, g_repo, index, &i_opts));
	FUNC2(i, expect, NULL, expect, NULL);
	FUNC6(i);

	FUNC4(index);
	FUNC8(&filelist);
}