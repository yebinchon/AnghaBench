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
struct resource {int dummy; } ;
struct deferred_device {int /*<<< orphan*/  node; struct resource* parent; struct amba_device* dev; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFERRED_DEVICE_TIMEOUT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct amba_device*,struct resource*) ; 
 int /*<<< orphan*/  deferred_devices ; 
 int /*<<< orphan*/  deferred_devices_lock ; 
 int /*<<< orphan*/  deferred_retry_work ; 
 struct deferred_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct amba_device *dev, struct resource *parent)
{
	int ret = FUNC0(dev, parent);

	if (ret == -EPROBE_DEFER) {
		struct deferred_device *ddev;

		ddev = FUNC1(sizeof(*ddev), GFP_KERNEL);
		if (!ddev)
			return -ENOMEM;

		ddev->dev = dev;
		ddev->parent = parent;
		ret = 0;

		FUNC4(&deferred_devices_lock);

		if (FUNC3(&deferred_devices))
			FUNC6(&deferred_retry_work,
					      DEFERRED_DEVICE_TIMEOUT);
		FUNC2(&ddev->node, &deferred_devices);

		FUNC5(&deferred_devices_lock);
	}
	return ret;
}