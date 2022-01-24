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
struct mii_bus {struct ag71xx_mdio* priv; } ;
struct ag71xx_mdio {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ builtin_switch; } ;

/* Variables and functions */
 int FUNC0 (struct ag71xx_mdio*,int,int) ; 
 int FUNC1 (struct mii_bus*,int,int) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus, int addr, int reg)
{
	struct ag71xx_mdio *am = bus->priv;

	if (am->pdata->builtin_switch)
		return FUNC1(bus, addr, reg);
	else
		return FUNC0(am, addr, reg);
}