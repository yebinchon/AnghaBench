#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ _check_counts ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  free_trees ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  run_index_diffs_with_modifier ; 
 int /*<<< orphan*/  setup_trees ; 

void FUNC2(void)
{
	_repo = FUNC0("status");
	_check_counts = 0;

	FUNC1(
		5, 16, run_index_diffs_with_modifier, setup_trees, free_trees);
}