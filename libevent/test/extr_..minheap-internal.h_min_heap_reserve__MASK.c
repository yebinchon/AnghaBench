#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event {int dummy; } ;
struct TYPE_3__ {size_t a; struct event** p; } ;
typedef  TYPE_1__ min_heap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct event**,size_t) ; 

int FUNC1(min_heap_t* s, size_t n)
{
	if (s->a < n)
	{
		struct event** p;
		size_t a = s->a ? s->a * 2 : 8;
		if (a < n)
			a = n;
		if (!(p = (struct event**)FUNC0(s->p, a * sizeof *p)))
			return -1;
		s->p = p;
		s->a = a;
	}
	return 0;
}