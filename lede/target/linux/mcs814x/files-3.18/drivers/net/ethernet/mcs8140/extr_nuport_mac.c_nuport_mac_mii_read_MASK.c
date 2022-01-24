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
typedef  int u32 ;
struct nuport_mac_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ADDR_REG ; 
 int MII_ADDR_SHIFT ; 
 int MII_BUSY ; 
 int /*<<< orphan*/  MII_DATA_REG ; 
 int MII_REG_SHIFT ; 
 struct nuport_mac_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct nuport_mac_priv*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus,
				int mii_id, int regnum)
{
	struct net_device *dev = bus->priv;
	struct nuport_mac_priv *priv = FUNC0(dev);
	int ret;
	u32 val = 0;

	ret = FUNC1(priv);
	if (ret)
		return ret;

	val |= (mii_id << MII_ADDR_SHIFT) | (regnum << MII_REG_SHIFT) | MII_BUSY;
	FUNC3(val, MII_ADDR_REG);
	ret = FUNC1(priv);
	if (ret)
		return ret;

	return FUNC2(MII_DATA_REG);
}