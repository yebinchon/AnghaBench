#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_9__ {int /*<<< orphan*/  on_disk; int /*<<< orphan*/  index_file_path; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_myrepo ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(void)
{
	git_repository *repo;
	git_index *read_index;
	git_index *write_index;

	FUNC4(&cleanup_myrepo, NULL);

	FUNC3(FUNC5("./myrepo", 0777, GIT_MKDIR_PATH));
	FUNC2("./myrepo/a.txt", "a\n");
	FUNC2("./myrepo/b.txt", "b\n");

	FUNC3(FUNC14(&repo, "./myrepo", 0));
	FUNC3(FUNC13(&write_index, repo));
	FUNC0(false, write_index->on_disk);

	FUNC3(FUNC9(&read_index, write_index->index_file_path));
	FUNC0(false, read_index->on_disk);

	/* Stage two new files against the write_index */
	FUNC3(FUNC6(write_index, "a.txt"));
	FUNC3(FUNC6(write_index, "b.txt"));

	FUNC1(2, FUNC7(write_index));

	/* Persist the index changes to disk */
	FUNC3(FUNC11(write_index));
	FUNC0(true, write_index->on_disk);

	/* Sync the changes back into the read_index */
	FUNC1(0, FUNC7(read_index));

	FUNC3(FUNC10(read_index, true));
	FUNC0(true, read_index->on_disk);

	FUNC1(2, FUNC7(read_index));

	/* Remove the index file from the filesystem */
	FUNC3(FUNC15(write_index->index_file_path));

	/* Sync the changes back into the read_index */
	FUNC3(FUNC10(read_index, true));
	FUNC0(false, read_index->on_disk);
	FUNC1(0, FUNC7(read_index));

	FUNC8(read_index);
	FUNC8(write_index);
	FUNC12(repo);
}