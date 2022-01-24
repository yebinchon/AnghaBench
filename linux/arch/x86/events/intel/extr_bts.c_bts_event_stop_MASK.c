#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {TYPE_2__* ds; } ;
struct TYPE_8__ {int /*<<< orphan*/  bts_interrupt_threshold; int /*<<< orphan*/  bts_absolute_maximum; int /*<<< orphan*/  bts_buffer_base; } ;
struct TYPE_9__ {int /*<<< orphan*/  head; } ;
struct bts_ctx {TYPE_3__ ds_back; TYPE_4__ handle; int /*<<< orphan*/  state; } ;
struct bts_buffer {int nr_pages; int /*<<< orphan*/  data_size; scalar_t__ snapshot; } ;
struct TYPE_7__ {int /*<<< orphan*/  bts_interrupt_threshold; int /*<<< orphan*/  bts_absolute_maximum; int /*<<< orphan*/  bts_buffer_base; int /*<<< orphan*/  bts_index; } ;

/* Variables and functions */
 int BTS_STATE_ACTIVE ; 
 int BTS_STATE_STOPPED ; 
 int PAGE_SHIFT ; 
 int PERF_EF_UPDATE ; 
 int /*<<< orphan*/  PERF_HES_STOPPED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int) ; 
 int /*<<< orphan*/  bts_ctx ; 
 int /*<<< orphan*/  FUNC2 (struct bts_ctx*) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct bts_buffer* FUNC5 (TYPE_4__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC6(&cpu_hw_events);
	struct bts_ctx *bts = FUNC6(&bts_ctx);
	struct bts_buffer *buf = NULL;
	int state = FUNC0(bts->state);

	if (state == BTS_STATE_ACTIVE)
		FUNC1(event, BTS_STATE_STOPPED);

	if (state != BTS_STATE_STOPPED)
		buf = FUNC5(&bts->handle);

	event->hw.state |= PERF_HES_STOPPED;

	if (flags & PERF_EF_UPDATE) {
		FUNC2(bts);

		if (buf) {
			if (buf->snapshot)
				bts->handle.head =
					FUNC3(&buf->data_size,
						   buf->nr_pages << PAGE_SHIFT);
			FUNC4(&bts->handle,
			                    FUNC3(&buf->data_size, 0));
		}

		cpuc->ds->bts_index = bts->ds_back.bts_buffer_base;
		cpuc->ds->bts_buffer_base = bts->ds_back.bts_buffer_base;
		cpuc->ds->bts_absolute_maximum = bts->ds_back.bts_absolute_maximum;
		cpuc->ds->bts_interrupt_threshold = bts->ds_back.bts_interrupt_threshold;
	}
}