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
 scalar_t__ BTS_STATE_ACTIVE ; 
 int /*<<< orphan*/  BTS_STATE_INACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bts_ctx ; 
 struct bts_ctx* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct bts_ctx *bts = FUNC2(&bts_ctx);

	/*
	 * Here we transition from ACTIVE to INACTIVE;
	 * do nothing for STOPPED or INACTIVE.
	 */
	if (FUNC0(bts->state) != BTS_STATE_ACTIVE)
		return;

	if (bts->handle.event)
		FUNC1(bts->handle.event, BTS_STATE_INACTIVE);
}