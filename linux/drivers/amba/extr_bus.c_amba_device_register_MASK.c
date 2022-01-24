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
struct resource {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * init_name; } ;
struct amba_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct amba_device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*,int /*<<< orphan*/ *) ; 

int FUNC2(struct amba_device *dev, struct resource *parent)
{
	FUNC1(dev, dev->dev.init_name);
	dev->dev.init_name = NULL;

	return FUNC0(dev, parent);
}