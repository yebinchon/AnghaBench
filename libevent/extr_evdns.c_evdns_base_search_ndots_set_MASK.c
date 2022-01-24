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
struct evdns_base {TYPE_1__* global_search_state; } ;
struct TYPE_2__ {int ndots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 TYPE_1__* FUNC2 () ; 

void
FUNC3(struct evdns_base *base, const int ndots) {
	FUNC0(base);
	if (!base->global_search_state) base->global_search_state = FUNC2();
	if (base->global_search_state)
		base->global_search_state->ndots = ndots;
	FUNC1(base);
}