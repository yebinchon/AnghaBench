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
struct device {int dummy; } ;
struct ace_device {int id; int irq; int bus_width; scalar_t__ physaddr; struct device* dev; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ace_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ace_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ace_device*) ; 
 struct ace_device* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, int id, resource_size_t physaddr,
		     int irq, int bus_width)
{
	struct ace_device *ace;
	int rc;
	FUNC1(dev, "ace_alloc(%p)\n", dev);

	if (!physaddr) {
		rc = -ENODEV;
		goto err_noreg;
	}

	/* Allocate and initialize the ace device structure */
	ace = FUNC5(sizeof(struct ace_device), GFP_KERNEL);
	if (!ace) {
		rc = -ENOMEM;
		goto err_alloc;
	}

	ace->dev = dev;
	ace->id = id;
	ace->physaddr = physaddr;
	ace->irq = irq;
	ace->bus_width = bus_width;

	/* Call the setup code */
	rc = FUNC0(ace);
	if (rc)
		goto err_setup;

	FUNC3(dev, ace);
	return 0;

err_setup:
	FUNC3(dev, NULL);
	FUNC4(ace);
err_alloc:
err_noreg:
	FUNC2(dev, "could not initialize device, err=%i\n", rc);
	return rc;
}