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
struct sata_rcar_priv {scalar_t__ base; int /*<<< orphan*/  sataint_mask; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_rcar_priv* private_data; } ;

/* Variables and functions */
 scalar_t__ SATAINTMASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap)
{
	struct sata_rcar_priv *priv = ap->host->private_data;

	/* mask */
	FUNC1(priv->sataint_mask, priv->base + SATAINTMASK_REG);

	FUNC0(ap);
}