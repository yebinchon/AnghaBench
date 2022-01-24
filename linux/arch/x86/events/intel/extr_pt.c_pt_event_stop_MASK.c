#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_buffer {int nr_pages; int /*<<< orphan*/  data_size; scalar_t__ snapshot; } ;
struct TYPE_5__ {int /*<<< orphan*/  head; struct perf_event* event; } ;
struct pt {TYPE_2__ handle; int /*<<< orphan*/  handle_nmi; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PERF_EF_UPDATE ; 
 scalar_t__ PERF_HES_STOPPED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct pt_buffer* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  pt_ctx ; 
 int /*<<< orphan*/  FUNC6 (struct pt*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct pt*) ; 
 struct pt* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct perf_event *event, int mode)
{
	struct pt *pt = FUNC9(&pt_ctx);

	/*
	 * Protect against the PMI racing with disabling wrmsr,
	 * see comment in intel_pt_interrupt().
	 */
	FUNC1(pt->handle_nmi, 0);

	FUNC5(event);

	if (event->hw.state == PERF_HES_STOPPED)
		return;

	event->hw.state = PERF_HES_STOPPED;

	if (mode & PERF_EF_UPDATE) {
		struct pt_buffer *buf = FUNC4(&pt->handle);

		if (!buf)
			return;

		if (FUNC0(pt->handle.event != event))
			return;

		FUNC7(buf);

		FUNC6(pt);

		FUNC8(pt);

		if (buf->snapshot)
			pt->handle.head =
				FUNC2(&buf->data_size,
					   buf->nr_pages << PAGE_SHIFT);
		FUNC3(&pt->handle, FUNC2(&buf->data_size, 0));
	}
}