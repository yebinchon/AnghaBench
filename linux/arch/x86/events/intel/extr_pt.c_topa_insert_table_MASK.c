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
struct topa {int last; scalar_t__ size; scalar_t__ offset; int /*<<< orphan*/  list; } ;
struct pt_buffer {struct topa* last; struct topa* cur; struct topa* first; int /*<<< orphan*/  tables; } ;
struct TYPE_2__ {int end; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PT_CAP_topa_multiple_entries ; 
 int TENTS_PER_PAGE ; 
 TYPE_1__* FUNC1 (struct topa*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct topa*) ; 

__attribute__((used)) static void FUNC5(struct pt_buffer *buf, struct topa *topa)
{
	struct topa *last = buf->last;

	FUNC3(&topa->list, &buf->tables);

	if (!buf->first) {
		buf->first = buf->last = buf->cur = topa;
		return;
	}

	topa->offset = last->offset + last->size;
	buf->last = topa;

	if (!FUNC2(PT_CAP_topa_multiple_entries))
		return;

	FUNC0(last->last != TENTS_PER_PAGE - 1);

	FUNC1(last, -1)->base = FUNC4(topa);
	FUNC1(last, -1)->end = 1;
}