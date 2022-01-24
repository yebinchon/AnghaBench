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
struct mm_struct {TYPE_2__ context; } ;

/* Variables and functions */
 int PERF_X86_EVENT_RDPMC_ALLOWED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  refresh_pce ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, struct mm_struct *mm)
{

	if (!(event->hw.flags & PERF_X86_EVENT_RDPMC_ALLOWED))
		return;

	if (FUNC0(&mm->context.perf_rdpmc_allowed))
		FUNC2(FUNC1(mm), refresh_pce, NULL, 1);
}