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
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_bus*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(struct ar8xxx_priv *priv, int reg, u32 val)
{
	struct mii_bus *bus = priv->mii_bus;
	u16 r1, r2, page;

	FUNC3((u32) reg, &r1, &r2, &page);

	FUNC1(&bus->mdio_lock);

	bus->write(bus, 0x18, 0, page);
	FUNC5();
	FUNC0(priv, 0x10 | r2, r1, val);

	FUNC2(&bus->mdio_lock);
}