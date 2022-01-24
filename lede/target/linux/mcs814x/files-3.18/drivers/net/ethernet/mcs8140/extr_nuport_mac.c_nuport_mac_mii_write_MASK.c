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
typedef  int u16 ;
struct nuport_mac_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ADDR_REG ; 
 int MII_ADDR_SHIFT ; 
 int MII_BUSY ; 
 int /*<<< orphan*/  MII_DATA_REG ; 
 int MII_REG_SHIFT ; 
 int MII_WRITE ; 
 struct nuport_mac_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct nuport_mac_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int mii_id,
				int regnum, u16 value)
{
	struct net_device *dev = bus->priv;
	struct nuport_mac_priv *priv = FUNC0(dev);
	int ret;
	u32 val = 0;

	ret = FUNC1(priv);
	if (ret)
		return ret;

	val |= (mii_id << MII_ADDR_SHIFT) | (regnum << MII_REG_SHIFT);
	val |= MII_BUSY | MII_WRITE;
	FUNC2(value, MII_DATA_REG);
	FUNC2(val, MII_ADDR_REG);

	return FUNC1(priv);
}