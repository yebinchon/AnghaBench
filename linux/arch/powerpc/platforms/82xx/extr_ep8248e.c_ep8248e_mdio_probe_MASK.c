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
struct resource {int start; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; int /*<<< orphan*/  id; TYPE_1__* parent; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 struct mii_bus* FUNC0 (int /*<<< orphan*/ *) ; 
 struct device_node* ep8248e_bcsr_node ; 
 int /*<<< orphan*/  ep8248e_mdio_ctrl ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *ofdev)
{
	struct mii_bus *bus;
	struct resource res;
	struct device_node *node;
	int ret;

	node = FUNC3(ofdev->dev.of_node);
	FUNC5(node);
	if (node != ep8248e_bcsr_node)
		return -ENODEV;

	ret = FUNC2(ofdev->dev.of_node, 0, &res);
	if (ret)
		return ret;

	bus = FUNC0(&ep8248e_mdio_ctrl);
	if (!bus)
		return -ENOMEM;

	bus->name = "ep8248e-mdio-bitbang";
	bus->parent = &ofdev->dev;
	FUNC6(bus->id, MII_BUS_ID_SIZE, "%x", res.start);

	ret = FUNC4(bus, ofdev->dev.of_node);
	if (ret)
		goto err_free_bus;

	return 0;
err_free_bus:
	FUNC1(bus);
	return ret;
}