#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_buffer {int /*<<< orphan*/  output_off; int /*<<< orphan*/  cur_idx; int /*<<< orphan*/  cur; int /*<<< orphan*/  snapshot; } ;
struct TYPE_6__ {int /*<<< orphan*/  head; } ;
struct pt {TYPE_2__ handle; int /*<<< orphan*/  handle_nmi; } ;
struct hw_perf_event {scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 scalar_t__ PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct pt_buffer* FUNC1 (TYPE_2__*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pt_buffer*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_ctx ; 
 struct pt* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct perf_event *event, int mode)
{
	struct hw_perf_event *hwc = &event->hw;
	struct pt *pt = FUNC7(&pt_ctx);
	struct pt_buffer *buf;

	buf = FUNC1(&pt->handle, event);
	if (!buf)
		goto fail_stop;

	FUNC4(buf, pt->handle.head);
	if (!buf->snapshot) {
		if (FUNC3(buf, &pt->handle))
			goto fail_end_stop;
	}

	FUNC0(pt->handle_nmi, 1);
	hwc->state = 0;

	FUNC6(FUNC8(buf->cur)->table, buf->cur_idx,
			 buf->output_off);
	FUNC5(event);

	return;

fail_end_stop:
	FUNC2(&pt->handle, 0);
fail_stop:
	hwc->state = PERF_HES_STOPPED;
}