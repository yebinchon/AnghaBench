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
struct TYPE_2__ {int fetch_negotiation_algorithm; } ;
struct repository {TYPE_1__ settings; } ;
struct fetch_negotiator {int dummy; } ;

/* Variables and functions */
#define  FETCH_NEGOTIATION_DEFAULT 129 
#define  FETCH_NEGOTIATION_SKIPPING 128 
 int /*<<< orphan*/  FUNC0 (struct fetch_negotiator*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct fetch_negotiator*) ; 

void FUNC3(struct repository *r,
			   struct fetch_negotiator *negotiator)
{
	FUNC1(r);
	switch(r->settings.fetch_negotiation_algorithm) {
	case FETCH_NEGOTIATION_SKIPPING:
		FUNC2(negotiator);
		return;

	case FETCH_NEGOTIATION_DEFAULT:
	default:
		FUNC0(negotiator);
		return;
	}
}