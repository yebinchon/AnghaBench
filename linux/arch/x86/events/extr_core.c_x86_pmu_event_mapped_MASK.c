#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  perf_rdpmc_allowed; } ;
struct mm_struct {TYPE_2__ context; int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int PERF_X86_EVENT_RDPMC_ALLOWED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  refresh_pce ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, struct mm_struct *mm)
{
	if (!(event->hw.flags & PERF_X86_EVENT_RDPMC_ALLOWED))
		return;

	/*
	 * This function relies on not being called concurrently in two
	 * tasks in the same mm.  Otherwise one task could observe
	 * perf_rdpmc_allowed > 1 and return all the way back to
	 * userspace with CR4.PCE clear while another task is still
	 * doing on_each_cpu_mask() to propagate CR4.PCE.
	 *
	 * For now, this can't happen because all callers hold mmap_sem
	 * for write.  If this changes, we'll need a different solution.
	 */
	FUNC1(&mm->mmap_sem);

	if (FUNC0(&mm->context.perf_rdpmc_allowed) == 1)
		FUNC3(FUNC2(mm), refresh_pce, NULL, 1);
}