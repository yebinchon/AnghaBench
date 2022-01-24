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
struct TYPE_12__ {void* flags; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 void* GIT_ITERATOR_DONT_IGNORE_CASE ; 
 void* GIT_ITERATOR_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,char const**,size_t,char const**) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 

void FUNC11(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_vector filelist;

	FUNC1(FUNC9(&filelist, 5, NULL));

	g_repo = FUNC2("icase");

	/* Test that a prefix `k` matches folders, even without trailing slash */
	{
		const char *expected[] = { "k/1", "k/B", "k/D", "k/a", "k/c" };
		size_t expected_len = 5;

		FUNC7(&filelist);
		FUNC1(FUNC10(&filelist, "k"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC3(i, expected_len, expected, expected_len, expected);
		FUNC6(i);
	}

	/* Test that a `k/` matches a folder */
	{
		const char *expected[] = { "k/1", "k/B", "k/D", "k/a", "k/c" };
		size_t expected_len = 5;

		FUNC7(&filelist);
		FUNC1(FUNC10(&filelist, "k/"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC3(i, expected_len, expected, expected_len, expected);
		FUNC6(i);
	}

	/* When the iterator is case sensitive, ensure we can't lookup the
	 * directory with the wrong case.
	 */
	{
		FUNC7(&filelist);
		FUNC1(FUNC10(&filelist, "K/"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC0(GIT_ITEROVER, FUNC4(NULL, i));
		FUNC6(i);
	}

	/* Test that case insensitive matching works. */
	{
		const char *expected[] = { "k/1", "k/a", "k/B", "k/c", "k/D" };
		size_t expected_len = 5;

		FUNC7(&filelist);
		FUNC1(FUNC10(&filelist, "K/"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC3(i, expected_len, expected, expected_len, expected);
		FUNC6(i);
	}

	/* Test that case insensitive matching works without trailing slash. */
	{
		const char *expected[] = { "k/1", "k/a", "k/B", "k/c", "k/D" };
		size_t expected_len = 5;

		FUNC7(&filelist);
		FUNC1(FUNC10(&filelist, "K"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC3(i, expected_len, expected, expected_len, expected);
		FUNC6(i);
	}

	FUNC8(&filelist);
}