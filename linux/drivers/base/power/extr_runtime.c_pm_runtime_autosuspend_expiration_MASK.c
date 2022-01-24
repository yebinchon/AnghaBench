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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  last_busy; int /*<<< orphan*/  autosuspend_delay; int /*<<< orphan*/  use_autosuspend; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int NSEC_PER_MSEC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 

u64 FUNC2(struct device *dev)
{
	int autosuspend_delay;
	u64 expires;

	if (!dev->power.use_autosuspend)
		return 0;

	autosuspend_delay = FUNC0(dev->power.autosuspend_delay);
	if (autosuspend_delay < 0)
		return 0;

	expires  = FUNC0(dev->power.last_busy);
	expires += (u64)autosuspend_delay * NSEC_PER_MSEC;
	if (expires > FUNC1())
		return expires;	/* Expires in the future */

	return 0;
}