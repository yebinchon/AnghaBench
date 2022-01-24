#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int min_heap_idx; } ;
struct event {TYPE_1__ ev_timeout_pos; } ;
struct TYPE_8__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ min_heap_t ;

/* Variables and functions */
 int EV_SIZE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct event*) ; 
 int FUNC1 (TYPE_2__*,struct event*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,struct event*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,struct event*) ; 

int FUNC4(min_heap_t *s, struct event *e)
{
	if (EV_SIZE_MAX == e->ev_timeout_pos.min_heap_idx) {
		return FUNC1(s, e);
	} else {
		size_t parent = (e->ev_timeout_pos.min_heap_idx - 1) / 2;
		/* The position of e has changed; we shift it up or down
		 * as needed.  We can't need to do both. */
		if (e->ev_timeout_pos.min_heap_idx > 0 && FUNC0(s->p[parent], e))
			FUNC3(s, e->ev_timeout_pos.min_heap_idx, e);
		else
			FUNC2(s, e->ev_timeout_pos.min_heap_idx, e);
		return 0;
	}
}