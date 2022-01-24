#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  seconds; } ;
struct TYPE_11__ {int /*<<< orphan*/  file_size; TYPE_1__ mtime; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_14__ {scalar_t__ contents; } ;
struct TYPE_12__ {int on_disk; TYPE_5__ entries; } ;
typedef  TYPE_3__ git_index ;
struct TYPE_13__ {size_t index; int /*<<< orphan*/  file_size; int /*<<< orphan*/  mtime; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*) ; 
 scalar_t__ index_entry_count ; 
 TYPE_4__* test_entries ; 

void FUNC9(void)
{
   git_index *index;
   unsigned int i;
   git_index_entry **entries;

   FUNC4(FUNC7(&index, TEST_INDEX_PATH));
   FUNC1(index->on_disk);

   FUNC1(FUNC5(index) == index_entry_count);
   FUNC1(FUNC8(&index->entries));

   entries = (git_index_entry **)index->entries.contents;

   for (i = 0; i < FUNC0(test_entries); ++i) {
		git_index_entry *e = entries[test_entries[i].index];

		FUNC3(e->path, test_entries[i].path);
		FUNC2(e->mtime.seconds, test_entries[i].mtime);
		FUNC2(e->file_size, test_entries[i].file_size);
   }

   FUNC6(index);
}