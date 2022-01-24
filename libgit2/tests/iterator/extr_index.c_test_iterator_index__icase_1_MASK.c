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
struct TYPE_4__ {char* start; char* end; void* flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 void* GIT_ITERATOR_DONT_AUTOEXPAND ; 
 void* GIT_ITERATOR_INCLUDE_TREES ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index;
	int caps;

	g_repo = FUNC1("icase");

	FUNC0(FUNC8(&index, g_repo));
	caps = FUNC3(index);

	/* force case sensitivity */
	FUNC0(FUNC5(index, caps & ~GIT_INDEX_CAPABILITY_IGNORE_CASE));

	/* autoexpand with no tree entries over range */
	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 7, NULL, 7, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 3, NULL, 3, NULL);
	FUNC7(i);

	/* auto expand with tree entries */
	i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 8, NULL, 8, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 4, NULL, 4, NULL);
	FUNC7(i);

	/* no auto expand (implies trees included) */
	i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 5, NULL, 8, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 1, NULL, 4, NULL);
	FUNC7(i);

	/* force case insensitivity */
	FUNC0(FUNC5(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));

	/* autoexpand with no tree entries over range */
	i_opts.flags = 0;

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 13, NULL, 13, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 5, NULL, 5, NULL);
	FUNC7(i);

	/* auto expand with tree entries */
	i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 14, NULL, 14, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 6, NULL, 6, NULL);
	FUNC7(i);

	/* no auto expand (implies trees included) */
	i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

	i_opts.start = "c";
	i_opts.end = "k/D";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 9, NULL, 14, NULL);
	FUNC7(i);

	i_opts.start = "k";
	i_opts.end = "k/Z";
	FUNC0(FUNC6(&i, g_repo, index, &i_opts));
	FUNC2(i, 1, NULL, 6, NULL);
	FUNC7(i);

	FUNC0(FUNC5(index, caps));
	FUNC4(index);
}