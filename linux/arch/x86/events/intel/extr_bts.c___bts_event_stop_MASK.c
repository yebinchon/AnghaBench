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
struct perf_event {int dummy; } ;
struct bts_ctx {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bts_ctx ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct bts_ctx* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int state)
{
	struct bts_ctx *bts = FUNC2(&bts_ctx);

	/* ACTIVE -> INACTIVE(PMI)/STOPPED(->stop()) */
	FUNC0(bts->state, state);

	/*
	 * No extra synchronization is mandated by the documentation to have
	 * BTS data stores globally visible.
	 */
	FUNC1();
}