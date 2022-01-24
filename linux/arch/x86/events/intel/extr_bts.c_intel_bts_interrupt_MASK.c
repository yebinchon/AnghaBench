#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct perf_event {int dummy; } ;
struct debug_store {scalar_t__ bts_index; scalar_t__ bts_interrupt_threshold; } ;
struct TYPE_5__ {struct perf_event* event; } ;
struct bts_ctx {TYPE_1__ handle; int /*<<< orphan*/  state; struct debug_store* ds; } ;
struct bts_buffer {int /*<<< orphan*/  data_size; int /*<<< orphan*/  head; scalar_t__ snapshot; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ BTS_STATE_STOPPED ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct bts_buffer*,TYPE_1__*) ; 
 int /*<<< orphan*/  bts_ctx ; 
 int /*<<< orphan*/  FUNC4 (struct bts_ctx*) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bts_buffer* FUNC7 (TYPE_1__*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct bts_buffer* FUNC9 (TYPE_1__*) ; 
 struct bts_ctx* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(void)
{
	struct debug_store *ds = FUNC10(&cpu_hw_events)->ds;
	struct bts_ctx *bts = FUNC10(&bts_ctx);
	struct perf_event *event = bts->handle.event;
	struct bts_buffer *buf;
	s64 old_head;
	int err = -ENOSPC, handled = 0;

	/*
	 * The only surefire way of knowing if this NMI is ours is by checking
	 * the write ptr against the PMI threshold.
	 */
	if (ds && (ds->bts_index >= ds->bts_interrupt_threshold))
		handled = 1;

	/*
	 * this is wrapped in intel_bts_enable_local/intel_bts_disable_local,
	 * so we can only be INACTIVE or STOPPED
	 */
	if (FUNC0(bts->state) == BTS_STATE_STOPPED)
		return handled;

	buf = FUNC9(&bts->handle);
	if (!buf)
		return handled;

	/*
	 * Skip snapshot counters: they don't use the interrupt, but
	 * there's no other way of telling, because the pointer will
	 * keep moving
	 */
	if (buf->snapshot)
		return 0;

	old_head = FUNC5(&buf->head);
	FUNC4(bts);

	/* no new data */
	if (old_head == FUNC5(&buf->head))
		return handled;

	FUNC8(&bts->handle, FUNC6(&buf->data_size, 0));

	buf = FUNC7(&bts->handle, event);
	if (buf)
		err = FUNC3(buf, &bts->handle);

	if (err) {
		FUNC1(bts->state, BTS_STATE_STOPPED);

		if (buf) {
			/*
			 * BTS_STATE_STOPPED should be visible before
			 * cleared handle::event
			 */
			FUNC2();
			FUNC8(&bts->handle, 0);
		}
	}

	return 1;
}