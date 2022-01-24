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
struct sata_oxnas_port_priv {int /*<<< orphan*/ * port_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;

/* Variables and functions */
 int SATA_CONTROL ; 
 int /*<<< orphan*/  SATA_CTL_ERR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct ata_port *ap)
{
	struct sata_oxnas_port_priv *pd = ap->private_data;
	u32 *base = pd->port_base;
	u32 reg;

	reg = FUNC0(base + SATA_CONTROL);
	reg &= SATA_CTL_ERR_MASK;
	FUNC1(reg, base + SATA_CONTROL);
}