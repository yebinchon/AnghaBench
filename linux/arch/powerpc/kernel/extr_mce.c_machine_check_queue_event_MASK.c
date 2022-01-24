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
struct machine_check_event {int dummy; } ;
typedef  int /*<<< orphan*/  evt ;

/* Variables and functions */
 int MAX_MC_EVT ; 
 int /*<<< orphan*/  MCE_EVENT_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct machine_check_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mce_event_process_work ; 
 int /*<<< orphan*/ * mce_event_queue ; 
 int /*<<< orphan*/  mce_queue_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct machine_check_event*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	int index;
	struct machine_check_event evt;

	if (!FUNC2(&evt, MCE_EVENT_RELEASE))
		return;

	index = FUNC1(mce_queue_count) - 1;
	/* If queue is full, just return for now. */
	if (index >= MAX_MC_EVT) {
		FUNC0(mce_queue_count);
		return;
	}
	FUNC4(FUNC5(&mce_event_queue[index]), &evt, sizeof(evt));

	/* Queue irq work to process this event later. */
	FUNC3(&mce_event_process_work);
}