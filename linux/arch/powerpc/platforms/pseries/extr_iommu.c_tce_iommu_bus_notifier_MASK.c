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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  BUS_NOTIFY_DEL_DEVICE 128 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 

__attribute__((used)) static int FUNC1(struct notifier_block *nb,
		unsigned long action, void *data)
{
	struct device *dev = data;

	switch (action) {
	case BUS_NOTIFY_DEL_DEVICE:
		FUNC0(dev);
		return 0;
	default:
		return 0;
	}
}