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
struct wakeup_source {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct wakeup_source* wakeup; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct wakeup_source *FUNC2(struct device *dev)
{
	struct wakeup_source *ws;

	FUNC0(&dev->power.lock);
	ws = dev->power.wakeup;
	dev->power.wakeup = NULL;
	FUNC1(&dev->power.lock);
	return ws;
}