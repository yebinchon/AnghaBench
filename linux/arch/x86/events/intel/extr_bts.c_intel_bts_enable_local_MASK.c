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
struct TYPE_2__ {scalar_t__ event; } ;
struct bts_ctx {TYPE_1__ handle; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int BTS_STATE_ACTIVE ; 
 int BTS_STATE_STOPPED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  bts_ctx ; 
 struct bts_ctx* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct bts_ctx *bts = FUNC3(&bts_ctx);
	int state = FUNC0(bts->state);

	/*
	 * Here we transition from INACTIVE to ACTIVE;
	 * if we instead are STOPPED from the interrupt handler,
	 * stay that way. Can't be ACTIVE here though.
	 */
	if (FUNC1(state == BTS_STATE_ACTIVE))
		return;

	if (state == BTS_STATE_STOPPED)
		return;

	if (bts->handle.event)
		FUNC2(bts->handle.event);
}