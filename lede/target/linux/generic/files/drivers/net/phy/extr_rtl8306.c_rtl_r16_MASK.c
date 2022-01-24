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
struct switch_dev {int dummy; } ;
struct rtl_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* read ) (struct mii_bus*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,unsigned int) ; 
 int FUNC1 (struct mii_bus*,unsigned int,unsigned int) ; 
 struct rtl_priv* FUNC2 (struct switch_dev*) ; 

__attribute__((used)) static inline int
FUNC3(struct switch_dev *dev, unsigned int page, unsigned int phy, unsigned int reg)
{
	struct rtl_priv *priv = FUNC2(dev);
	struct mii_bus *bus = priv->bus;

	FUNC0(priv, page);
	return bus->read(bus, phy, reg);
}