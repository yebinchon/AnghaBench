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
struct event_callback {int evcb_flags; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct event_base*) ; 
 int EVLIST_ACTIVE ; 
 int EVLIST_ACTIVE_LATER ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,struct event_callback*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 

int
FUNC3(struct event_base *base,
    struct event_callback *evcb)
{
	if (evcb->evcb_flags & (EVLIST_ACTIVE|EVLIST_ACTIVE_LATER))
		return 0;

	FUNC1(base, evcb);
	if (FUNC0(base))
		FUNC2(base);
	return 1;
}