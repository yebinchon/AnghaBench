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
struct TYPE_9__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {char* start; char* end; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  git__strcmp_cb ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 

void FUNC12(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index;
	int caps;
	git_vector filelist;

	FUNC0(FUNC10(&filelist, 100, &git__strcmp_cb));
	FUNC0(FUNC11(&filelist, "a"));
	FUNC0(FUNC11(&filelist, "B"));
	FUNC0(FUNC11(&filelist, "c"));
	FUNC0(FUNC11(&filelist, "D"));
	FUNC0(FUNC11(&filelist, "e"));
	FUNC0(FUNC11(&filelist, "k/1"));
	FUNC0(FUNC11(&filelist, "k/a"));
	FUNC0(FUNC11(&filelist, "L/1"));

	g_repo = FUNC1("icase");

	FUNC0(FUNC8(&index, g_repo));
	caps = FUNC3(index);

	/* force case sensitivity */
	FUNC0(FUNC5(index, caps & ~GIT_INDEX_CAPABILITY_IGNORE_CASE));

	/* All indexfilelist iterator tests are "autoexpand with no tree entries" */

	i_opts.pathlist.strings = (char **)filelist.contents;
	i_opts.pathlist.count = filelist.length;

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 3, NULL, 3, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 1, NULL, 1, NULL);
	FUNC7(i);

	/* force case insensitivity */
	FUNC0(FUNC5(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 5, NULL, 5, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 2, NULL, 2, NULL);
	FUNC7(i);

	FUNC0(FUNC5(index, caps));
	FUNC4(index);
	FUNC9(&filelist);
}