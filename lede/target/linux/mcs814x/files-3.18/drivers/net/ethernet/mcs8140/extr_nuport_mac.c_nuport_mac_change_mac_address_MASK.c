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
typedef  int /*<<< orphan*/  u32 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct nuport_mac_priv {int /*<<< orphan*/  lock; } ;
struct net_device {scalar_t__ dev_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MAC_ADDR_HIGH_REG ; 
 int /*<<< orphan*/  MAC_ADDR_LOW_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nuport_mac_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *mac_addr)
{
	struct sockaddr *addr = mac_addr;
	struct nuport_mac_priv *priv = FUNC1(dev);
	unsigned long *temp = (unsigned long *)dev->dev_addr;
	u32 high, low;

	if (FUNC2(dev))
		return -EBUSY;

	FUNC0(dev->dev_addr, addr->sa_data, ETH_ALEN);

	FUNC5(&priv->lock);

	FUNC4(*temp, MAC_ADDR_LOW_REG);
	temp = (unsigned long *)(dev->dev_addr + 4);
	FUNC4(*temp, MAC_ADDR_HIGH_REG);

	low = FUNC3(MAC_ADDR_LOW_REG);
	high = FUNC3(MAC_ADDR_HIGH_REG);

	FUNC6(&priv->lock);

	return 0;
}