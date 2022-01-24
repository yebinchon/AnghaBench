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

/* Variables and functions */
 int MAX_MC_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mce_ue_count ; 
 int /*<<< orphan*/  mce_ue_event_irq_work ; 
 int /*<<< orphan*/ * mce_ue_event_queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct machine_check_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct machine_check_event *evt)
{
	int index;

	index = FUNC1(mce_ue_count) - 1;
	/* If queue is full, just return for now. */
	if (index >= MAX_MC_EVT) {
		FUNC0(mce_ue_count);
		return;
	}
	FUNC3(FUNC4(&mce_ue_event_queue[index]), evt, sizeof(*evt));

	/* Queue work to process this event later. */
	FUNC2(&mce_ue_event_irq_work);
}