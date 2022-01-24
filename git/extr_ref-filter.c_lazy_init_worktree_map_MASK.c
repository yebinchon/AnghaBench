#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ worktrees; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ ref_to_worktree_map ; 
 int /*<<< orphan*/  ref_to_worktree_map_cmpfnc ; 

__attribute__((used)) static void FUNC3(void)
{
	if (ref_to_worktree_map.worktrees)
		return;

	ref_to_worktree_map.worktrees = FUNC0(0);
	FUNC1(&(ref_to_worktree_map.map), ref_to_worktree_map_cmpfnc, NULL, 0);
	FUNC2(&(ref_to_worktree_map.map), ref_to_worktree_map.worktrees);
}