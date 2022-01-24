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
struct mii_bus {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct mii_bus *mii, u32 reg, u32 val)
{
	unsigned long flags;
	u16 phy_addr;
	u16 phy_reg;

	reg = (reg & 0xfffffffc) >> 2;
	phy_addr = FUNC4(reg);
	phy_reg = FUNC5(reg);

	FUNC2(flags);
	FUNC0(mii->priv, 0x1f, 0x10, FUNC3(reg));
	FUNC0(mii->priv, phy_addr, phy_reg + 1, (val >> 16));
	FUNC0(mii->priv, phy_addr, phy_reg, (val & 0xffff));
	FUNC1(flags);
}