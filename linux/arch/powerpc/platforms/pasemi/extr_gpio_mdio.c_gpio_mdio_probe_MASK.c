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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {char* name; unsigned int mdc_pin; unsigned int mdio_pin; struct device* parent; struct mii_bus* priv; int /*<<< orphan*/  id; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct gpio_priv {char* name; unsigned int mdc_pin; unsigned int mdio_pin; struct device* parent; struct gpio_priv* priv; int /*<<< orphan*/  id; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct mii_bus*) ; 
 int /*<<< orphan*/  gpio_mdio_read ; 
 int /*<<< orphan*/  gpio_mdio_reset ; 
 int /*<<< orphan*/  gpio_mdio_write ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 struct mii_bus* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC3 () ; 
 unsigned int* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int const) ; 

__attribute__((used)) static int FUNC8(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct device_node *np = ofdev->dev.of_node;
	struct mii_bus *new_bus;
	struct gpio_priv *priv;
	const unsigned int *prop;
	int err;

	err = -ENOMEM;
	priv = FUNC2(sizeof(struct gpio_priv), GFP_KERNEL);
	if (!priv)
		goto out;

	new_bus = FUNC3();

	if (!new_bus)
		goto out_free_priv;

	new_bus->name = "pasemi gpio mdio bus";
	new_bus->read = &gpio_mdio_read;
	new_bus->write = &gpio_mdio_write;
	new_bus->reset = &gpio_mdio_reset;

	prop = FUNC4(np, "reg", NULL);
	FUNC7(new_bus->id, MII_BUS_ID_SIZE, "%x", *prop);
	new_bus->priv = priv;

	prop = FUNC4(np, "mdc-pin", NULL);
	priv->mdc_pin = *prop;

	prop = FUNC4(np, "mdio-pin", NULL);
	priv->mdio_pin = *prop;

	new_bus->parent = dev;
	FUNC0(dev, new_bus);

	err = FUNC5(new_bus, np);

	if (err != 0) {
		FUNC6("%s: Cannot register as MDIO bus, err %d\n",
				new_bus->name, err);
		goto out_free_irq;
	}

	return 0;

out_free_irq:
	FUNC1(new_bus);
out_free_priv:
	FUNC1(priv);
out:
	return err;
}