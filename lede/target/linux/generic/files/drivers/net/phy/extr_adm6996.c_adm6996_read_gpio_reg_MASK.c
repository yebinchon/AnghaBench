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
struct adm6996_priv {int /*<<< orphan*/  eesk; int /*<<< orphan*/  eecs; int /*<<< orphan*/  eedi; } ;
typedef  enum admreg { ____Placeholder_admreg } admreg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996_priv*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adm6996_priv*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16
FUNC5(struct adm6996_priv *priv, enum admreg reg)
{
	/* cmd: 01 10 T DD R RRRRRR */
	u8 bits[6] = {
		0xFF, 0xFF, 0xFF, 0xFF,
		(0x06 << 4) | ((0 & 0x01) << 3 | (reg&64)>>6),
		((reg&63)<<2)
	};

	u8 rbits[4];

	/* Enable GPIO outputs with all pins to 0 */
	FUNC4(priv->eecs, 0);
	FUNC4(priv->eesk, 0);
	FUNC4(priv->eedi, 0);

	FUNC2(priv, 0, bits, 46);
	FUNC3(priv->eedi);
	FUNC0(priv, 2);
	FUNC1(priv, 0, rbits, 32);

	/* Extra clock(s) required per datasheet */
	FUNC0(priv, 2);

	/* Disable GPIO outputs */
	FUNC3(priv->eecs);
	FUNC3(priv->eesk);

	 /* EEPROM has 16-bit registers, but pumps out two registers in one request */
	return (reg & 0x01 ?  (rbits[0]<<8) | rbits[1] : (rbits[2]<<8) | (rbits[3]));
}