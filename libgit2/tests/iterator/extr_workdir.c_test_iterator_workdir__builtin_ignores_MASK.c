#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* start; char* end; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_9__ {scalar_t__ mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 scalar_t__ GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  GIT_ITERATOR_DONT_AUTOEXPAND ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC6 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

void FUNC13(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	const git_index_entry *entry;
	int idx;
	static struct {
		const char *path;
		bool ignored;
	} expected[] = {
		{ "dir/", true },
		{ "file", false },
		{ "ign", true },
		{ "macro_bad", false },
		{ "macro_test", false },
		{ "root_test1", false },
		{ "root_test2", false },
		{ "root_test3", false },
		{ "root_test4.txt", false },
		{ "sub/", false },
		{ "sub/.gitattributes", false },
		{ "sub/abc", false },
		{ "sub/dir/", true },
		{ "sub/file", false },
		{ "sub/ign/", true },
		{ "sub/sub/", false },
		{ "sub/sub/.gitattributes", false },
		{ "sub/sub/dir", false }, /* file is not actually a dir */
		{ "sub/sub/file", false },
		{ NULL, false }
	};

	g_repo = FUNC5("attr");

	FUNC4(FUNC12("attr/sub/sub/.git", 0777));
	FUNC3("attr/sub/.git", "whatever");

	i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;
	i_opts.start = "dir";
	i_opts.end = "sub/sub/file";

	FUNC4(FUNC10(
		&i, g_repo, NULL, NULL, &i_opts));
	FUNC4(FUNC8(&entry, i));

	for (idx = 0; entry != NULL; ++idx) {
		int ignored = FUNC9(i);

		FUNC2(expected[idx].path, entry->path);
		FUNC1(ignored == expected[idx].ignored, expected[idx].path);

		if (!ignored &&
			(entry->mode == GIT_FILEMODE_TREE ||
			 entry->mode == GIT_FILEMODE_COMMIT))
		{
			/* it is possible to advance "into" a submodule */
			FUNC4(FUNC7(&entry, i));
		} else {
			int error = FUNC6(&entry, i);
			FUNC0(!error || error == GIT_ITEROVER);
		}
	}

	FUNC0(expected[idx].path == NULL);

	FUNC11(i);
}