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
struct TYPE_10__ {int /*<<< orphan*/  snap; } ;
typedef  TYPE_2__ git_index_iterator ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {char* path; void* mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 void* GIT_FILEMODE_BLOB ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__ const**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	git_index *index;
	git_index_iterator *iterator;
	const git_index_entry *entry;
	git_index_entry new_entry = {0};
	size_t expected = 0, seen = 0;
	int ret;

	FUNC2(FUNC9(&index, TEST_INDEX_PATH));
	FUNC2(FUNC7(&iterator, index));

	expected = FUNC4(index);
	FUNC0(FUNC11(&iterator->snap));

	/*
	 * After we've counted the entries, add a new one and change another;
	 * ensure that our iterator is backed by a snapshot and thus returns
	 * the number of entries from when the iterator was created.
	 */
	FUNC2(FUNC10(&new_entry.id, "8312e0a89a9cbab77c732b6bc39b51a783e3a318"));
	new_entry.path = "newfile";
	new_entry.mode = GIT_FILEMODE_BLOB;
	FUNC2(FUNC3(index, &new_entry));

	FUNC2(FUNC10(&new_entry.id, "4141414141414141414141414141414141414141"));
	new_entry.path = "Makefile";
	new_entry.mode = GIT_FILEMODE_BLOB;
	FUNC2(FUNC3(index, &new_entry));

	while (true) {
		ret = FUNC8(&entry, iterator);

		if (ret == GIT_ITEROVER)
			break;

		seen++;
	}

	FUNC1(expected, seen);

	FUNC6(iterator);
	FUNC5(index);
}