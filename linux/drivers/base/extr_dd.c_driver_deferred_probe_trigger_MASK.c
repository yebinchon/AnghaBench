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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  deferred_probe_active_list ; 
 int /*<<< orphan*/  deferred_probe_mutex ; 
 int /*<<< orphan*/  deferred_probe_pending_list ; 
 int /*<<< orphan*/  deferred_probe_work ; 
 int /*<<< orphan*/  deferred_trigger_count ; 
 int /*<<< orphan*/  driver_deferred_probe_enable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (!driver_deferred_probe_enable)
		return;

	/*
	 * A successful probe means that all the devices in the pending list
	 * should be triggered to be reprobed.  Move all the deferred devices
	 * into the active list so they can be retried by the workqueue
	 */
	FUNC2(&deferred_probe_mutex);
	FUNC0(&deferred_trigger_count);
	FUNC1(&deferred_probe_pending_list,
			      &deferred_probe_active_list);
	FUNC3(&deferred_probe_mutex);

	/*
	 * Kick the re-probe thread.  It may already be scheduled, but it is
	 * safe to kick it again.
	 */
	FUNC4(&deferred_probe_work);
}