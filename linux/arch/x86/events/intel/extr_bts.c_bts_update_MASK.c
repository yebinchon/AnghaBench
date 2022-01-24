#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct debug_store {unsigned long bts_index; unsigned long bts_buffer_base; scalar_t__ bts_absolute_maximum; } ;
struct bts_ctx {int /*<<< orphan*/  handle; } ;
struct bts_buffer {int /*<<< orphan*/  data_size; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  head; int /*<<< orphan*/  cur_buf; } ;
struct TYPE_2__ {struct debug_store* ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_AUX_FLAG_TRUNCATED ; 
 unsigned long FUNC0 (struct bts_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bts_buffer* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct bts_ctx *bts)
{
	int cpu = FUNC7();
	struct debug_store *ds = FUNC4(cpu_hw_events, cpu).ds;
	struct bts_buffer *buf = FUNC6(&bts->handle);
	unsigned long index = ds->bts_index - ds->bts_buffer_base, old, head;

	if (!buf)
		return;

	head = index + FUNC0(buf, buf->cur_buf);
	old = FUNC3(&buf->head, head);

	if (!buf->snapshot) {
		if (old == head)
			return;

		if (ds->bts_index >= ds->bts_absolute_maximum)
			FUNC5(&bts->handle,
			                     PERF_AUX_FLAG_TRUNCATED);

		/*
		 * old and head are always in the same physical buffer, so we
		 * can subtract them to get the data size.
		 */
		FUNC1(head - old, &buf->data_size);
	} else {
		FUNC2(&buf->data_size, head);
	}
}