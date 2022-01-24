#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_5__ {char* path; size_t mode; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 size_t GIT_FILEMODE_TREE ; 
 int GIT_ITERATOR_INCLUDE_TREES ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC6 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC11 (char const*) ; 

void FUNC12(
	git_iterator *i,
	size_t expected_flat,
	const char **expected_flat_paths,
	size_t expected_total,
	const char **expected_total_paths)
{
	const git_index_entry *entry;
	size_t count;
	int no_trees = !(FUNC9(i) & GIT_ITERATOR_INCLUDE_TREES);
	bool v = false;
	int error;

	if (v) FUNC5(stderr, "== %s ==\n", no_trees ? "notrees" : "trees");

	count = 0;

	while (!FUNC6(&entry, i)) {
		if (v) FUNC5(stderr, "  %s %07o\n", entry->path, (int)entry->mode);

		if (no_trees)
			FUNC1(entry->mode != GIT_FILEMODE_TREE);

		if (expected_flat_paths) {
			const char *expect_path = expected_flat_paths[count];
			size_t expect_len = FUNC11(expect_path);

			FUNC3(expect_path, entry->path);

			if (expect_path[expect_len - 1] == '/')
				FUNC2(GIT_FILEMODE_TREE, entry->mode);
			else
				FUNC1(entry->mode != GIT_FILEMODE_TREE);
		}

		FUNC1(++count <= expected_flat);
	}

	FUNC0(i, v);
	FUNC2(expected_flat, count);

	FUNC4(FUNC10(i));

	count = 0;
	FUNC4(FUNC8(&entry, i));

	if (v) FUNC5(stderr, "-- %s --\n", no_trees ? "notrees" : "trees");

	while (entry != NULL) {
		if (v) FUNC5(stderr, "  %s %07o\n", entry->path, (int)entry->mode);

		if (no_trees)
			FUNC1(entry->mode != GIT_FILEMODE_TREE);

		if (expected_total_paths) {
			const char *expect_path = expected_total_paths[count];
			size_t expect_len = FUNC11(expect_path);

			FUNC3(expect_path, entry->path);

			if (expect_path[expect_len - 1] == '/')
				FUNC2(GIT_FILEMODE_TREE, entry->mode);
			else
				FUNC1(entry->mode != GIT_FILEMODE_TREE);
		}

		if (entry->mode == GIT_FILEMODE_TREE) {
			error = FUNC7(&entry, i);

			/* could return NOTFOUND if directory is empty */
			FUNC1(!error || error == GIT_ENOTFOUND);

			if (error == GIT_ENOTFOUND) {
				error = FUNC6(&entry, i);
				FUNC1(!error || error == GIT_ITEROVER);
			}
		} else {
			error = FUNC6(&entry, i);
			FUNC1(!error || error == GIT_ITEROVER);
		}

		if (++count >= expected_total)
			break;
	}

	FUNC0(i, v);
	FUNC2(expected_total, count);
}