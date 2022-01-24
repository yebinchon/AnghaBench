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
typedef  int /*<<< orphan*/  apm_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  kapmd_queue ; 
 int /*<<< orphan*/  kapmd_queue_lock ; 
 int /*<<< orphan*/  kapmd_wait ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(apm_event_t event)
{
	unsigned long flags;

	FUNC1(&kapmd_queue_lock, flags);
	FUNC0(&kapmd_queue, event);
	FUNC2(&kapmd_queue_lock, flags);

	FUNC3(&kapmd_wait);
}