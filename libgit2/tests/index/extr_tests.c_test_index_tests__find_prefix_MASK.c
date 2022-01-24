#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 scalar_t__ GIT_ENOTFOUND ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (size_t*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
   git_index *index;
   const git_index_entry *entry;
   size_t pos;

   FUNC1(FUNC6(&index, TEST_INDEX_PATH));

   FUNC1(FUNC3(&pos, index, "src"));
   entry = FUNC5(index, pos);
   FUNC0(FUNC2(entry->path, "src/block-sha1/sha1.c") == 0);

   FUNC1(FUNC3(&pos, index, "src/co"));
   entry = FUNC5(index, pos);
   FUNC0(FUNC2(entry->path, "src/commit.c") == 0);

   FUNC0(GIT_ENOTFOUND == FUNC3(NULL, index, "blah"));

   FUNC4(index);
}