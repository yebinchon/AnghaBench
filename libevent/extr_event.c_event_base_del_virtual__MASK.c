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
struct event_base {scalar_t__ virtual_event_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC5(struct event_base *base)
{
	FUNC0(base, th_base_lock);
	FUNC3(base->virtual_event_count > 0);
	base->virtual_event_count--;
	if (base->virtual_event_count == 0 && FUNC1(base))
		FUNC4(base);
	FUNC2(base, th_base_lock);
}