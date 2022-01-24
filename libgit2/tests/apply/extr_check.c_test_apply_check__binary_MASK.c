#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_apply_options ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_MODIFY_TWO_FILES_BINARY ; 
 int /*<<< orphan*/  GIT_APPLY_CHECK ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_INDEX ; 
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
   git_diff *diff;
   git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

   opts.flags |= GIT_APPLY_CHECK;
   FUNC0(FUNC3(&diff,
       DIFF_MODIFY_TWO_FILES_BINARY,
       FUNC4(DIFF_MODIFY_TWO_FILES_BINARY)));
   FUNC0(FUNC1(repo, diff, GIT_APPLY_LOCATION_INDEX, &opts));

   FUNC5(repo);
   FUNC6(repo);

   FUNC2(diff);
}