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
struct TYPE_11__ {int flags; TYPE_1__ pathlist; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 int GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_FILTERED ; 
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_NORMAL ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 TYPE_2__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void FUNC12(void)
{
	git_vector pathlist = GIT_VECTOR_INIT;
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

	FUNC10(&pathlist, "dirA/subdir1/subdir2/file");
	FUNC10(&pathlist, "dirB/subdir1/subdir2");
	FUNC10(&pathlist, "dirC/subdir1/nonexistent");
	FUNC10(&pathlist, "dirD/subdir1/nonexistent");
	FUNC10(&pathlist, "dirD/subdir1/subdir2");
	FUNC10(&pathlist, "dirD/nonexistent");

	i_opts.pathlist.strings = (char **)pathlist.contents;
	i_opts.pathlist.count = pathlist.length;
	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
		GIT_ITERATOR_DONT_AUTOEXPAND;

	g_repo = FUNC3("icase");

	/* Create a directory that has a file that is included in our pathlist */
	FUNC4(FUNC11("icase/dirA", 0777));
	FUNC4(FUNC11("icase/dirA/subdir1", 0777));
	FUNC4(FUNC11("icase/dirA/subdir1/subdir2", 0777));
	FUNC2("icase/dirA/subdir1/subdir2/file", "foo!");

	/* Create a directory that has a directory that is included in our pathlist */
	FUNC4(FUNC11("icase/dirB", 0777));
	FUNC4(FUNC11("icase/dirB/subdir1", 0777));
	FUNC4(FUNC11("icase/dirB/subdir1/subdir2", 0777));
	FUNC2("icase/dirB/subdir1/subdir2/file", "foo!");

	/* Create a directory that would contain an entry in our pathlist, but
	 * that entry does not actually exist.  We don't know this until we
	 * advance_over it.  We want to distinguish this from an actually empty
	 * or ignored directory.
	 */
	FUNC4(FUNC11("icase/dirC", 0777));
	FUNC4(FUNC11("icase/dirC/subdir1", 0777));
	FUNC4(FUNC11("icase/dirC/subdir1/subdir2", 0777));
	FUNC2("icase/dirC/subdir1/subdir2/file", "foo!");

	/* Create a directory that has a mix of actual and nonexistent paths */
	FUNC4(FUNC11("icase/dirD", 0777));
	FUNC4(FUNC11("icase/dirD/subdir1", 0777));
	FUNC4(FUNC11("icase/dirD/subdir1/subdir2", 0777));
	FUNC2("icase/dirD/subdir1/subdir2/file", "foo!");

	FUNC1(FUNC7(&i, g_repo, NULL, NULL, &i_opts));

	FUNC5(i, "dirA/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "dirB/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "dirC/", GIT_ITERATOR_STATUS_FILTERED);
	FUNC5(i, "dirD/", GIT_ITERATOR_STATUS_NORMAL);

	FUNC0(GIT_ITEROVER, FUNC6(NULL, i));
	FUNC8(i);
	FUNC9(&pathlist);
}