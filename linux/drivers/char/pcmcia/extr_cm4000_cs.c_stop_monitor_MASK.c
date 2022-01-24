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
struct cm4000_dev {int /*<<< orphan*/  flags; scalar_t__ monitor_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cm4000_dev*,char*) ; 
 int /*<<< orphan*/  IS_ATR_PRESENT ; 
 int /*<<< orphan*/  IS_ATR_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cm4000_dev*) ; 

__attribute__((used)) static void FUNC3(struct cm4000_dev *dev)
{
	FUNC0(3, dev, "-> stop_monitor\n");
	if (dev->monitor_running) {
		FUNC0(5, dev, "stopping monitor\n");
		FUNC2(dev);
		/* reset monitor SM */
		FUNC1(IS_ATR_VALID, &dev->flags);
		FUNC1(IS_ATR_PRESENT, &dev->flags);
	} else
		FUNC0(5, dev, "monitor already stopped\n");
	FUNC0(3, dev, "<- stop_monitor\n");
}