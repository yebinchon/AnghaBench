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
struct thread_info {struct thread_info* real_thread; } ;
struct TYPE_2__ {struct thread_info* stack; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 struct thread_info* FUNC0 () ; 
 int pending_mask ; 
 unsigned long FUNC1 (int*,int /*<<< orphan*/ ) ; 

unsigned long FUNC2(int nested)
{
	struct thread_info *ti, *to;
	unsigned long mask;

	ti = FUNC0();

	pending_mask = 1;

	to = ti->real_thread;
	current->stack = to;
	ti->real_thread = NULL;
	*to = *ti;

	mask = FUNC1(&pending_mask, 0);
	return mask & ~1;
}