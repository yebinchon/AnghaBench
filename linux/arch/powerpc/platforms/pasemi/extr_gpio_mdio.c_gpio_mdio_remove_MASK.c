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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mii_bus {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 struct mii_bus* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_bus*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct mii_bus *bus = FUNC0(&dev->dev);

	FUNC4(bus);

	FUNC1(&dev->dev, NULL);

	FUNC2(bus->priv);
	bus->priv = NULL;
	FUNC3(bus);

	return 0;
}