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
struct checkout {TYPE_1__* delayed_checkout; } ;
struct TYPE_2__ {int /*<<< orphan*/  paths; int /*<<< orphan*/  filters; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_CAN_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 

void FUNC2(struct checkout *state)
{
	if (!state->delayed_checkout) {
		state->delayed_checkout = FUNC1(sizeof(*state->delayed_checkout));
		state->delayed_checkout->state = CE_CAN_DELAY;
		FUNC0(&state->delayed_checkout->filters, 0);
		FUNC0(&state->delayed_checkout->paths, 0);
	}
}