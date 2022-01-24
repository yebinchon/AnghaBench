#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; } ;
struct perf_event {TYPE_3__ hw; } ;
struct cpu_hw_events {TYPE_2__* ds; } ;
struct TYPE_4__ {int /*<<< orphan*/  bts_interrupt_threshold; int /*<<< orphan*/  bts_absolute_maximum; int /*<<< orphan*/  bts_buffer_base; } ;
struct bts_ctx {int /*<<< orphan*/  handle; TYPE_1__ ds_back; } ;
struct bts_buffer {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bts_interrupt_threshold; int /*<<< orphan*/  bts_absolute_maximum; int /*<<< orphan*/  bts_buffer_base; } ;

/* Variables and functions */
 scalar_t__ PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct bts_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bts_ctx ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct bts_buffer* FUNC2 (int /*<<< orphan*/ *,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC5(&cpu_hw_events);
	struct bts_ctx *bts = FUNC5(&bts_ctx);
	struct bts_buffer *buf;

	buf = FUNC2(&bts->handle, event);
	if (!buf)
		goto fail_stop;

	if (FUNC1(buf, &bts->handle))
		goto fail_end_stop;

	bts->ds_back.bts_buffer_base = cpuc->ds->bts_buffer_base;
	bts->ds_back.bts_absolute_maximum = cpuc->ds->bts_absolute_maximum;
	bts->ds_back.bts_interrupt_threshold = cpuc->ds->bts_interrupt_threshold;

	FUNC4(event);
	event->hw.state = 0;

	FUNC0(event);

	return;

fail_end_stop:
	FUNC3(&bts->handle, 0);

fail_stop:
	event->hw.state = PERF_HES_STOPPED;
}