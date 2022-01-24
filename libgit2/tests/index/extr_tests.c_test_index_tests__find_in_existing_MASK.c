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
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_3__ {size_t index; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_1__* test_entries ; 

void FUNC6(void)
{
   git_index *index;
   unsigned int i;

   FUNC2(FUNC5(&index, TEST_INDEX_PATH));

   for (i = 0; i < FUNC0(test_entries); ++i) {
		size_t idx;

		FUNC1(!FUNC3(&idx, index, test_entries[i].path));
		FUNC1(idx == test_entries[i].index);
   }

   FUNC4(index);
}