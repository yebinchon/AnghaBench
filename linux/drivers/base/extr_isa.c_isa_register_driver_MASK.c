#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct isa_driver {TYPE_1__* devices; TYPE_2__ driver; } ;
struct TYPE_6__ {struct isa_driver* platform_data; int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; } ;
struct isa_dev {unsigned int id; TYPE_1__ dev; TYPE_1__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  isa_bus ; 
 int /*<<< orphan*/  isa_bus_type ; 
 int /*<<< orphan*/  isa_dev_release ; 
 int /*<<< orphan*/  FUNC5 (struct isa_driver*) ; 
 struct isa_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(struct isa_driver *isa_driver, unsigned int ndev)
{
	int error;
	unsigned int id;

	isa_driver->driver.bus	= &isa_bus_type;
	isa_driver->devices	= NULL;

	error = FUNC4(&isa_driver->driver);
	if (error)
		return error;

	for (id = 0; id < ndev; id++) {
		struct isa_dev *isa_dev;

		isa_dev = FUNC6(sizeof *isa_dev, GFP_KERNEL);
		if (!isa_dev) {
			error = -ENOMEM;
			break;
		}

		isa_dev->dev.parent	= &isa_bus;
		isa_dev->dev.bus	= &isa_bus_type;

		FUNC1(&isa_dev->dev, "%s.%u",
			     isa_driver->driver.name, id);
		isa_dev->dev.platform_data	= isa_driver;
		isa_dev->dev.release		= isa_dev_release;
		isa_dev->id			= id;

		isa_dev->dev.coherent_dma_mask = FUNC0(24);
		isa_dev->dev.dma_mask = &isa_dev->dev.coherent_dma_mask;

		error = FUNC2(&isa_dev->dev);
		if (error) {
			FUNC7(&isa_dev->dev);
			break;
		}

		if (isa_dev->dev.platform_data) {
			isa_dev->next = isa_driver->devices;
			isa_driver->devices = &isa_dev->dev;
		} else
			FUNC3(&isa_dev->dev);
	}

	if (!error && !isa_driver->devices)
		error = -ENODEV;

	if (error)
		FUNC5(isa_driver);

	return error;
}