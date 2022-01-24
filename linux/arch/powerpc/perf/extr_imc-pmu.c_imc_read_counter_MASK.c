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
struct TYPE_2__ {int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC4(struct perf_event *event)
{
	u64 *addr, data;

	/*
	 * In-Memory Collection (IMC) counters are free flowing counters.
	 * So we take a snapshot of the counter value on enable and save it
	 * to calculate the delta at later stage to present the event counter
	 * value.
	 */
	addr = FUNC2(event);
	data = FUNC1(FUNC0(*addr));
	FUNC3(&event->hw.prev_count, data);

	return data;
}