#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pt_buffer {int /*<<< orphan*/  output_off; int /*<<< orphan*/  cur_idx; int /*<<< orphan*/  cur; int /*<<< orphan*/  data_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  head; struct perf_event* event; } ;
struct pt {TYPE_3__ handle; int /*<<< orphan*/  handle_nmi; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_8__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_buffer* FUNC2 (TYPE_3__*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct pt_buffer* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct pt_buffer*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*) ; 
 int /*<<< orphan*/  pt_ctx ; 
 int /*<<< orphan*/  FUNC10 (struct pt*) ; 
 int /*<<< orphan*/  FUNC11 (struct pt_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct pt*) ; 
 struct pt* FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	struct pt *pt = FUNC13(&pt_ctx);
	struct pt_buffer *buf;
	struct perf_event *event = pt->handle.event;

	/*
	 * There may be a dangling PT bit in the interrupt status register
	 * after PT has been disabled by pt_event_stop(). Make sure we don't
	 * do anything (particularly, re-enable) for this event here.
	 */
	if (!FUNC0(pt->handle_nmi))
		return;

	if (!event)
		return;

	FUNC9(event);

	buf = FUNC4(&pt->handle);
	if (!buf)
		return;

	FUNC11(buf);

	FUNC10(pt);

	FUNC12(pt);

	FUNC3(&pt->handle, FUNC1(&buf->data_size, 0));

	if (!event->hw.state) {
		int ret;

		buf = FUNC2(&pt->handle, event);
		if (!buf) {
			event->hw.state = PERF_HES_STOPPED;
			return;
		}

		FUNC6(buf, pt->handle.head);
		/* snapshot counters don't use PMI, so it's safe */
		ret = FUNC5(buf, &pt->handle);
		if (ret) {
			FUNC3(&pt->handle, 0);
			return;
		}

		FUNC8(FUNC14(buf->cur)->table, buf->cur_idx,
				 buf->output_off);
		FUNC7(event);
	}
}