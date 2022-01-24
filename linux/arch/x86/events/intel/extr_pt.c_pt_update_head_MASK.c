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
typedef  scalar_t__ u64 ;
struct pt_buffer {scalar_t__ output_off; scalar_t__ cur_idx; int nr_pages; int /*<<< orphan*/  data_size; int /*<<< orphan*/  head; scalar_t__ snapshot; TYPE_1__* cur; } ;
struct pt {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct pt_buffer* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pt *pt)
{
	struct pt_buffer *buf = FUNC4(&pt->handle);
	u64 topa_idx, base, old;

	/* offset of the first region in this table from the beginning of buf */
	base = buf->cur->offset + buf->output_off;

	/* offset of the current output region within this table */
	for (topa_idx = 0; topa_idx < buf->cur_idx; topa_idx++)
		base += FUNC0(buf->cur, topa_idx);

	if (buf->snapshot) {
		FUNC3(&buf->data_size, base);
	} else {
		old = (FUNC1(&buf->head, base) &
		       ((buf->nr_pages << PAGE_SHIFT) - 1));
		if (base < old)
			base += buf->nr_pages << PAGE_SHIFT;

		FUNC2(base - old, &buf->data_size);
	}
}