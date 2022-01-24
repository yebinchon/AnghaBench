#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  snap; } ;
typedef  TYPE_2__ git_index_iterator ;
struct TYPE_10__ {size_t seconds; } ;
struct TYPE_12__ {size_t file_size; TYPE_1__ mtime; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_13__ {size_t mtime; size_t file_size; int /*<<< orphan*/  path; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__ const**,TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_4__* test_entries ; 

void FUNC13(void)
{
	git_index *index;
	git_index_iterator *iterator;
	const git_index_entry *entry;
	size_t i, iterator_idx = 0, found = 0;
	int ret;

	FUNC6(FUNC11(&index, TEST_INDEX_PATH));
	FUNC6(FUNC9(&iterator, index));

	FUNC1(FUNC12(&iterator->snap));

	for (i = 0; i < FUNC0(test_entries); i++) {
		/* Advance iterator to next test entry index */
		do {
			ret = FUNC10(&entry, iterator);

			if (ret == GIT_ITEROVER)
				FUNC4("iterator did not contain all test entries");

			FUNC6(ret);
		} while (iterator_idx++ < test_entries[i].index);

		FUNC3(entry->path, test_entries[i].path);
		FUNC2(entry->mtime.seconds, test_entries[i].mtime);
		FUNC2(entry->file_size, test_entries[i].file_size);
		found++;
	}

	while ((ret = FUNC10(&entry, iterator)) == 0)
		;

	if (ret != GIT_ITEROVER)
		FUNC5(ret);

	FUNC2(found, FUNC0(test_entries));

	FUNC8(iterator);
	FUNC7(index);
}