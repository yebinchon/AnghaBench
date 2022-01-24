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
typedef  int u8 ;
typedef  int u16 ;
struct adm6996_priv {int /*<<< orphan*/  eedi; int /*<<< orphan*/  eesk; int /*<<< orphan*/  eecs; } ;
typedef  enum admreg { ____Placeholder_admreg } admreg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996_priv*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct adm6996_priv *priv, enum admreg reg, u16 val)
{
	/* cmd(27bits): sb(1) + opc(01) + addr(bbbbbbbb) + data(bbbbbbbbbbbbbbbb) */
	u8 bits[4] = {
		(0x05 << 5) | (reg >> 3),
		(reg << 5) | (u8)(val >> 11),
		(u8)(val >> 3),
		(u8)(val << 5)
	};

	/* Enable GPIO outputs with all pins to 0 */
	FUNC3(priv->eecs, 0);
	FUNC3(priv->eesk, 0);
	FUNC3(priv->eedi, 0);

	/* Write cmd. Total 27 bits */
	FUNC1(priv, 1, bits, 27);

	/* Extra clock(s) required per datasheet */
	FUNC0(priv, 2);

	/* Disable GPIO outputs */
	FUNC2(priv->eecs);
	FUNC2(priv->eesk);
	FUNC2(priv->eedi);
}