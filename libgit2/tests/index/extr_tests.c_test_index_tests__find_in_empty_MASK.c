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
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 scalar_t__ GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*) ; 
 TYPE_1__* test_entries ; 

void FUNC6(void)
{
   git_index *index;
   unsigned int i;

   FUNC2(FUNC5(&index, "fake-index"));

   for (i = 0; i < FUNC0(test_entries); ++i) {
		FUNC1(GIT_ENOTFOUND == FUNC3(NULL, index, test_entries[i].path));
   }

   FUNC4(index);
}