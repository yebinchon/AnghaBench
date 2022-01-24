#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int num_resources; TYPE_2__ dev; TYPE_1__* resource; scalar_t__ id; } ;
typedef  int resource_size_t ;
struct TYPE_4__ {int flags; int start; } ;

/* Variables and functions */
 int ACE_BUS_WIDTH_16 ; 
 int ACE_BUS_WIDTH_8 ; 
 int IORESOURCE_IRQ ; 
 int IORESOURCE_MEM ; 
 int FUNC0 (TYPE_2__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,struct platform_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	resource_size_t physaddr = 0;
	int bus_width = ACE_BUS_WIDTH_16; /* FIXME: should not be hard coded */
	u32 id = dev->id;
	int irq = 0;
	int i;

	FUNC1(&dev->dev, "ace_probe(%p)\n", dev);

	/* device id and bus width */
	if (FUNC3(dev->dev.of_node, "port-number", &id))
		id = 0;
	if (FUNC2(dev->dev.of_node, "8-bit", NULL))
		bus_width = ACE_BUS_WIDTH_8;

	for (i = 0; i < dev->num_resources; i++) {
		if (dev->resource[i].flags & IORESOURCE_MEM)
			physaddr = dev->resource[i].start;
		if (dev->resource[i].flags & IORESOURCE_IRQ)
			irq = dev->resource[i].start;
	}

	/* Call the bus-independent setup code */
	return FUNC0(&dev->dev, id, physaddr, irq, bus_width);
}