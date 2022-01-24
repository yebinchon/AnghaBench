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
struct nuport_mac_priv {TYPE_1__* pdev; } ;
struct net_device {void** dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MAC_ADDR_HIGH_REG ; 
 scalar_t__ MAC_ADDR_LOW_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 struct nuport_mac_priv* FUNC2 (struct net_device*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct nuport_mac_priv *priv = FUNC2(dev);
	int i;

	for (i = 0; i < 4; i++)
		dev->dev_addr[i] = FUNC3(MAC_ADDR_LOW_REG + i);
	dev->dev_addr[4] = FUNC3(MAC_ADDR_HIGH_REG);
	dev->dev_addr[5] = FUNC3(MAC_ADDR_HIGH_REG + 1);

	if (!FUNC1(dev->dev_addr)) {
		FUNC0(&priv->pdev->dev, "using random address\n");
		FUNC4(dev->dev_addr);
	}
}