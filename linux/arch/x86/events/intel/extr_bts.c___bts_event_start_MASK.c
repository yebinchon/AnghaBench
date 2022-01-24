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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  exclude_user; int /*<<< orphan*/  exclude_kernel; } ;
struct perf_event {TYPE_1__ attr; } ;
struct bts_ctx {int /*<<< orphan*/  state; int /*<<< orphan*/  handle; } ;
struct bts_buffer {int /*<<< orphan*/  snapshot; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_PERFMON_EVENTSEL_INT ; 
 int /*<<< orphan*/  ARCH_PERFMON_EVENTSEL_OS ; 
 int /*<<< orphan*/  ARCH_PERFMON_EVENTSEL_USR ; 
 int /*<<< orphan*/  BTS_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bts_buffer*) ; 
 int /*<<< orphan*/  bts_ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bts_buffer* FUNC3 (int /*<<< orphan*/ *) ; 
 struct bts_ctx* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct perf_event *event)
{
	struct bts_ctx *bts = FUNC4(&bts_ctx);
	struct bts_buffer *buf = FUNC3(&bts->handle);
	u64 config = 0;

	if (!buf->snapshot)
		config |= ARCH_PERFMON_EVENTSEL_INT;
	if (!event->attr.exclude_kernel)
		config |= ARCH_PERFMON_EVENTSEL_OS;
	if (!event->attr.exclude_user)
		config |= ARCH_PERFMON_EVENTSEL_USR;

	FUNC1(buf);

	/*
	 * local barrier to make sure that ds configuration made it
	 * before we enable BTS and bts::state goes ACTIVE
	 */
	FUNC5();

	/* INACTIVE/STOPPED -> ACTIVE */
	FUNC0(bts->state, BTS_STATE_ACTIVE);

	FUNC2(config);

}