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
struct TYPE_3__ {int /*<<< orphan*/  state_path; scalar_t__ inmemory; } ;
typedef  TYPE_1__ git_rebase ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(git_rebase *rebase)
{
	if (!rebase || rebase->inmemory)
		return 0;

	return FUNC1(rebase->state_path) ?
		FUNC0(rebase->state_path, NULL, GIT_RMDIR_REMOVE_FILES) :
		0;
}