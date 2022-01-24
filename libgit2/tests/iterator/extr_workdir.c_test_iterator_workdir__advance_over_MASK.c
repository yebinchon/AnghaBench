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
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 int GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_EMPTY ; 
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_IGNORED ; 
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_NORMAL ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
		GIT_ITERATOR_DONT_AUTOEXPAND;

	g_repo = FUNC3("icase");

	/* create an empty directory */
	FUNC4(FUNC9("icase/empty", 0777));

	/* create a directory in which all contents are ignored */
	FUNC4(FUNC9("icase/all_ignored", 0777));
	FUNC2("icase/all_ignored/one", "This is ignored\n");
	FUNC2("icase/all_ignored/two", "This, too, is ignored\n");
	FUNC2("icase/all_ignored/.gitignore", ".gitignore\none\ntwo\n");

	/* create a directory in which not all contents are ignored */
	FUNC4(FUNC9("icase/some_ignored", 0777));
	FUNC2("icase/some_ignored/one", "This is ignored\n");
	FUNC2("icase/some_ignored/two", "This is not ignored\n");
	FUNC2("icase/some_ignored/.gitignore", ".gitignore\none\n");

	/* create a directory which has some empty children */
	FUNC4(FUNC9("icase/empty_children", 0777));
	FUNC4(FUNC9("icase/empty_children/empty1", 0777));
	FUNC4(FUNC9("icase/empty_children/empty2", 0777));
	FUNC4(FUNC9("icase/empty_children/empty3", 0777));

	/* create a directory which will disappear! */
	FUNC4(FUNC9("icase/missing_directory", 0777));

	FUNC1(FUNC7(&i, g_repo, NULL, NULL, &i_opts));

	FUNC4(FUNC10("icase/missing_directory"));

	FUNC5(i, "B", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "D", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "F", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "H", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "J", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "L/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "a", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "all_ignored/", GIT_ITERATOR_STATUS_IGNORED);
	FUNC5(i, "c", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "e", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "empty/", GIT_ITERATOR_STATUS_EMPTY);
	FUNC5(i, "empty_children/", GIT_ITERATOR_STATUS_EMPTY);
	FUNC5(i, "g", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "i", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "k/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "missing_directory/", GIT_ITERATOR_STATUS_EMPTY);
	FUNC5(i, "some_ignored/", GIT_ITERATOR_STATUS_NORMAL);

	FUNC0(GIT_ITEROVER, FUNC6(NULL, i));
	FUNC8(i);
}