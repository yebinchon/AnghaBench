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
struct topa {int z_count; int last; int /*<<< orphan*/  size; } ;
struct pt_buffer {size_t nr_pages; int /*<<< orphan*/  snapshot; int /*<<< orphan*/ * data_pages; struct topa* last; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int size; int base; int intr; int stop; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PT_CAP_topa_multiple_entries ; 
 scalar_t__ FUNC0 (struct page*) ; 
 TYPE_1__* FUNC1 (struct topa*,int) ; 
 int TOPA_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct topa* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_buffer*,struct topa*) ; 
 scalar_t__ FUNC8 (struct topa*) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pt_buffer *buf, int cpu, gfp_t gfp)
{
	struct topa *topa = buf->last;
	int order = 0;
	struct page *p;

	p = FUNC9(buf->data_pages[buf->nr_pages]);
	if (FUNC0(p))
		order = FUNC3(p);

	if (FUNC8(topa)) {
		topa = FUNC6(cpu, gfp);
		if (!topa)
			return -ENOMEM;

		FUNC7(buf, topa);
	}

	if (topa->z_count == topa->last - 1) {
		if (order == FUNC1(topa, topa->last - 1)->size)
			topa->z_count++;
	}

	FUNC1(topa, -1)->base = FUNC4(p) >> TOPA_SHIFT;
	FUNC1(topa, -1)->size = order;
	if (!buf->snapshot &&
	    !FUNC2(PT_CAP_topa_multiple_entries)) {
		FUNC1(topa, -1)->intr = 1;
		FUNC1(topa, -1)->stop = 1;
	}

	topa->last++;
	topa->size += FUNC5(order);

	buf->nr_pages += 1ul << order;

	return 0;
}