#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t min_heap_idx; } ;
struct event {TYPE_1__ ev_timeout_pos; } ;
struct TYPE_5__ {size_t n; struct event** p; } ;
typedef  TYPE_2__ min_heap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct event*,struct event*) ; 

void FUNC1(min_heap_t* s, size_t hole_index, struct event* e)
{
    size_t min_child = 2 * (hole_index + 1);
    while (min_child <= s->n)
	{
	min_child -= min_child == s->n || FUNC0(s->p[min_child], s->p[min_child - 1]);
	if (!(FUNC0(e, s->p[min_child])))
	    break;
	(s->p[hole_index] = s->p[min_child])->ev_timeout_pos.min_heap_idx = hole_index;
	hole_index = min_child;
	min_child = 2 * (hole_index + 1);
	}
    (s->p[hole_index] = e)->ev_timeout_pos.min_heap_idx = hole_index;
}