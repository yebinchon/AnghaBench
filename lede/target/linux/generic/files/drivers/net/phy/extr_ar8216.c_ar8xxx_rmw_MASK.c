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
typedef  int u16 ;
struct mii_bus {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  (* write ) (struct mii_bus*,int,int /*<<< orphan*/ ,int) ;} ;
struct ar8xxx_priv {struct mii_bus* mii_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_bus*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

u32
FUNC7(struct ar8xxx_priv *priv, int reg, u32 mask, u32 val)
{
	struct mii_bus *bus = priv->mii_bus;
	u16 r1, r2, page;
	u32 ret;

	FUNC4((u32) reg, &r1, &r2, &page);

	FUNC2(&bus->mdio_lock);

	bus->write(bus, 0x18, 0, page);
	FUNC6();

	ret = FUNC0(priv, 0x10 | r2, r1);
	ret &= ~mask;
	ret |= val;
	FUNC1(priv, 0x10 | r2, r1, ret);

	FUNC3(&bus->mdio_lock);

	return ret;
}