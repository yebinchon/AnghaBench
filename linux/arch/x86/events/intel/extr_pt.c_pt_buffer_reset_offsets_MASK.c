#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct topa_page {int /*<<< orphan*/  topa; } ;
struct topa_entry {int dummy; } ;
struct pt_buffer {int nr_pages; unsigned long output_off; int /*<<< orphan*/  data_size; int /*<<< orphan*/  head; int /*<<< orphan*/ * cur; struct topa_entry* cur_idx; scalar_t__ snapshot; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pt_buffer*) ; 
 struct topa_entry* FUNC4 (struct pt_buffer*,int) ; 
 struct topa_page* FUNC5 (struct topa_entry*) ; 

__attribute__((used)) static void FUNC6(struct pt_buffer *buf, unsigned long head)
{
	struct topa_page *cur_tp;
	struct topa_entry *te;
	int pg;

	if (buf->snapshot)
		head &= (buf->nr_pages << PAGE_SHIFT) - 1;

	pg = (head >> PAGE_SHIFT) & (buf->nr_pages - 1);
	te = FUNC4(buf, pg);

	cur_tp = FUNC5(te);
	buf->cur = &cur_tp->topa;
	buf->cur_idx = te - FUNC0(buf->cur, 0);
	buf->output_off = head & (FUNC3(buf) - 1);

	FUNC1(&buf->head, head);
	FUNC2(&buf->data_size, 0);
}