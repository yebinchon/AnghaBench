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
struct mt7530_priv {scalar_t__ base; scalar_t__ bus; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static u32
FUNC4(struct mt7530_priv *priv, u32 reg)
{
	u32 val;
	if (priv->bus) {
		u16 high, low;

		FUNC2(priv->bus, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
		low = FUNC1(priv->bus, 0x1f, (reg >> 2) & 0xf);
		high = FUNC1(priv->bus, 0x1f, 0x10);

		return (high << 16) | (low & 0xffff);
	}

	val = FUNC0(priv->base + reg);
	FUNC3("MT7530 MDIO Read [%04x]=%08x\n", reg, val);

	return val;
}