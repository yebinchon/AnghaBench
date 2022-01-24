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
struct sata_rcar_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SATAPCTLR1_REG ; 
 int /*<<< orphan*/  SATAPCTLR2_REG ; 
 int /*<<< orphan*/  SATAPCTLR3_REG ; 
 int /*<<< orphan*/  SATAPCTLR4_REG ; 
 int /*<<< orphan*/  FUNC0 (struct sata_rcar_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct sata_rcar_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct sata_rcar_priv *priv)
{
	FUNC0(priv);
	FUNC1(priv, SATAPCTLR1_REG, 0x00200188, 0);
	FUNC1(priv, SATAPCTLR1_REG, 0x00200188, 1);
	FUNC1(priv, SATAPCTLR3_REG, 0x0000A061, 0);
	FUNC1(priv, SATAPCTLR2_REG, 0x20000000, 0);
	FUNC1(priv, SATAPCTLR2_REG, 0x20000000, 1);
	FUNC1(priv, SATAPCTLR4_REG, 0x28E80000, 0);
}