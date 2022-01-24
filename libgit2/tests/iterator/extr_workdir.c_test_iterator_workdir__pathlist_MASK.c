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
struct TYPE_11__ {char* start; char* end; void* flags; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 void* GIT_ITERATOR_DONT_IGNORE_CASE ; 
 void* GIT_ITERATOR_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,char const**,size_t,char const**) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 

void FUNC8(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_vector filelist;

	FUNC0(FUNC6(&filelist, 100, NULL));
	FUNC0(FUNC7(&filelist, "a"));
	FUNC0(FUNC7(&filelist, "B"));
	FUNC0(FUNC7(&filelist, "c"));
	FUNC0(FUNC7(&filelist, "D"));
	FUNC0(FUNC7(&filelist, "e"));
	FUNC0(FUNC7(&filelist, "k.a"));
	FUNC0(FUNC7(&filelist, "k.b"));
	FUNC0(FUNC7(&filelist, "k/1"));
	FUNC0(FUNC7(&filelist, "k/a"));
	FUNC0(FUNC7(&filelist, "kZZZZZZZ"));
	FUNC0(FUNC7(&filelist, "L/1"));

	g_repo = FUNC1("icase");

	/* Test iterators without returning tree entries (but autoexpanding.) */

	i_opts.pathlist.strings = (char **)filelist.contents;
	i_opts.pathlist.count = filelist.length;

	/* Case sensitive */
	{
		const char *expected[] = {
			"B", "D", "L/1", "a", "c", "e", "k/1", "k/a" };
		size_t expected_len = 8;

		i_opts.start = NULL;
		i_opts.end = NULL;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Case INsensitive */
	{
		const char *expected[] = {
			"a", "B", "c", "D", "e", "k/1", "k/a", "L/1" };
		size_t expected_len = 8;

		i_opts.start = NULL;
		i_opts.end = NULL;
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Set a start, but no end.  Case sensitive. */
	{
		const char *expected[] = { "c", "e", "k/1", "k/a" };
		size_t expected_len = 4;

		i_opts.start = "c";
		i_opts.end = NULL;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Set a start, but no end.  Case INsensitive. */
	{
		const char *expected[] = { "c", "D", "e", "k/1", "k/a", "L/1" };
		size_t expected_len = 6;

		i_opts.start = "c";
		i_opts.end = NULL;
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Set no start, but an end.  Case sensitive. */
	{
		const char *expected[] = { "B", "D", "L/1", "a", "c", "e" };
		size_t expected_len = 6;

		i_opts.start = NULL;
		i_opts.end = "e";
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Set no start, but an end.  Case INsensitive. */
	{
		const char *expected[] = { "a", "B", "c", "D", "e" };
		size_t expected_len = 5;

		i_opts.start = NULL;
		i_opts.end = "e";
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Start and an end, case sensitive */
	{
		const char *expected[] = { "c", "e", "k/1" };
		size_t expected_len = 3;

		i_opts.start = "c";
		i_opts.end = "k/D";
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Start and an end, case sensitive */
	{
		const char *expected[] = { "k/1" };
		size_t expected_len = 1;

		i_opts.start = "k";
		i_opts.end = "k/D";
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Start and an end, case INsensitive */
	{
		const char *expected[] = { "c", "D", "e", "k/1", "k/a" };
		size_t expected_len = 5;

		i_opts.start = "c";
		i_opts.end = "k/D";
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	/* Start and an end, case INsensitive */
	{
		const char *expected[] = { "k/1", "k/a" };
		size_t expected_len = 2;

		i_opts.start = "k";
		i_opts.end = "k/D";
		i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

		FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
		FUNC2(i, expected_len, expected, expected_len, expected);
		FUNC4(i);
	}

	FUNC5(&filelist);
}