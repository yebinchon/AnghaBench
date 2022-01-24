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
struct binder_alloc {int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 int BUFFER_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct binder_alloc*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ binder_selftest_failures ; 
 int /*<<< orphan*/  binder_selftest_lock ; 
 int binder_selftest_run ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(struct binder_alloc *alloc)
{
	size_t end_offset[BUFFER_NUM];

	if (!binder_selftest_run)
		return;
	FUNC1(&binder_selftest_lock);
	if (!binder_selftest_run || !alloc->vma)
		goto done;
	FUNC3("STARTED\n");
	FUNC0(alloc, end_offset, 0);
	binder_selftest_run = false;
	if (binder_selftest_failures > 0)
		FUNC3("%d tests FAILED\n", binder_selftest_failures);
	else
		FUNC3("PASSED\n");

done:
	FUNC2(&binder_selftest_lock);
}