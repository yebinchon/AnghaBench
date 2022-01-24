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
struct cm4000_dev {scalar_t__ monitor_running; int /*<<< orphan*/  timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  devq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cm4000_dev*,char*) ; 
 int /*<<< orphan*/  LOCK_MONITOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cm4000_dev *dev)
{

	/* tell the monitor to stop and wait until
	 * it terminates.
	 */
	FUNC0(3, dev, "-> terminate_monitor\n");
	FUNC5(dev->devq,
				 FUNC3(LOCK_MONITOR,
						  (void *)&dev->flags));

	/* now, LOCK_MONITOR has been set.
	 * allow a last cycle in the monitor.
	 * the monitor will indicate that it has
	 * finished by clearing this bit.
	 */
	FUNC0(5, dev, "Now allow last cycle of monitor!\n");
	while (FUNC4(LOCK_MONITOR, (void *)&dev->flags))
		FUNC2(25);

	FUNC0(5, dev, "Delete timer\n");
	FUNC1(&dev->timer);
#ifdef CM4000_DEBUG
	dev->monitor_running = 0;
#endif

	FUNC0(3, dev, "<- terminate_monitor\n");
}