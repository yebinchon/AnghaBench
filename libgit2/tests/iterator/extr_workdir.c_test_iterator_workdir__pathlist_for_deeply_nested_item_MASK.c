#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  length; scalar_t__ contents; } ;
typedef  TYPE_2__ git_vector ;
struct TYPE_14__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_16__ {void* flags; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
struct TYPE_17__ {int /*<<< orphan*/  stat_calls; } ;
typedef  TYPE_4__ git_iterator ;

/* Variables and functions */
 void* GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,size_t,char const**,size_t,char const**) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 

void FUNC12(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_vector filelist;

	FUNC1(FUNC10(&filelist, 5, NULL));

	g_repo = FUNC2("icase");
	FUNC3(FUNC7(g_repo), 3);

	/* Ensure that we find the single path we're interested in, and we find
	 * it efficiently, and don't stat the entire world to get there.
	 */
	{
		const char *expected[] = { "item1/item3/item5/item7" };
		size_t expected_len = 1;

		FUNC8(&filelist);
		FUNC1(FUNC11(&filelist, "item1/item3/item5/item7"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC4(i, expected_len, expected, expected_len, expected);
		FUNC0(4, i->stat_calls);
		FUNC6(i);
	}

	/* Ensure that we find the single path we're interested in, and we find
	 * it efficiently, and don't stat the entire world to get there.
	 */
	{
		const char *expected[] = {
			"item1/item3/item5/item0", "item1/item3/item5/item1",
			"item1/item3/item5/item2", "item1/item3/item5/item3",
			"item1/item3/item5/item4", "item1/item3/item5/item5",
			"item1/item3/item5/item6", "item1/item3/item5/item7",
		};
		size_t expected_len = 8;

		FUNC8(&filelist);
		FUNC1(FUNC11(&filelist, "item1/item3/item5/"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC4(i, expected_len, expected, expected_len, expected);
		FUNC0(11, i->stat_calls);
		FUNC6(i);
	}

	/* Ensure that we find the single path we're interested in, and we find
	 * it efficiently, and don't stat the entire world to get there.
	 */
	{
		const char *expected[] = {
			"item1/item3/item0",
			"item1/item3/item1/item0", "item1/item3/item1/item1",
			"item1/item3/item1/item2", "item1/item3/item1/item3",
			"item1/item3/item1/item4", "item1/item3/item1/item5",
			"item1/item3/item1/item6", "item1/item3/item1/item7",
			"item1/item3/item2",
			"item1/item3/item3/item0", "item1/item3/item3/item1",
			"item1/item3/item3/item2", "item1/item3/item3/item3",
			"item1/item3/item3/item4", "item1/item3/item3/item5",
			"item1/item3/item3/item6", "item1/item3/item3/item7",
			"item1/item3/item4",
			"item1/item3/item5/item0", "item1/item3/item5/item1",
			"item1/item3/item5/item2", "item1/item3/item5/item3",
			"item1/item3/item5/item4", "item1/item3/item5/item5",
			"item1/item3/item5/item6", "item1/item3/item5/item7",
			"item1/item3/item6",
			"item1/item3/item7/item0", "item1/item3/item7/item1",
			"item1/item3/item7/item2", "item1/item3/item7/item3",
			"item1/item3/item7/item4", "item1/item3/item7/item5",
			"item1/item3/item7/item6", "item1/item3/item7/item7",
		};
		size_t expected_len = 36;

		FUNC8(&filelist);
		FUNC1(FUNC11(&filelist, "item1/item3/"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC4(i, expected_len, expected, expected_len, expected);
		FUNC0(42, i->stat_calls);
		FUNC6(i);
	}

	/* Ensure that we find the single path we're interested in, and we find
	 * it efficiently, and don't stat the entire world to get there.
	 */
	{
		const char *expected[] = {
			"item0", "item1/item2", "item5/item7/item4", "item6",
			"item7/item3/item1/item6" };
		size_t expected_len = 5;

		FUNC8(&filelist);
		FUNC1(FUNC11(&filelist, "item7/item3/item1/item6"));
		FUNC1(FUNC11(&filelist, "item6"));
		FUNC1(FUNC11(&filelist, "item5/item7/item4"));
		FUNC1(FUNC11(&filelist, "item1/item2"));
		FUNC1(FUNC11(&filelist, "item0"));

		/* also add some things that don't exist or don't match the right type */
		FUNC1(FUNC11(&filelist, "item2/"));
		FUNC1(FUNC11(&filelist, "itemN"));
		FUNC1(FUNC11(&filelist, "item1/itemA"));
		FUNC1(FUNC11(&filelist, "item5/item3/item4/"));

		i_opts.pathlist.strings = (char **)filelist.contents;
		i_opts.pathlist.count = filelist.length;
		i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

		FUNC1(FUNC5(&i, g_repo, NULL, NULL, &i_opts));
		FUNC4(i, expected_len, expected, expected_len, expected);
		FUNC0(14, i->stat_calls);
		FUNC6(i);
	}

	FUNC9(&filelist);
}