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
struct platform_device {int dummy; } ;
struct mpc52xx_ata_priv {int ata_irq; int /*<<< orphan*/  dmatsk; } ;
struct ata_host {struct mpc52xx_ata_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ata_host* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int
FUNC5(struct platform_device *op)
{
	struct ata_host *host = FUNC4(op);
	struct mpc52xx_ata_priv *priv = host->private_data;
	int task_irq;

	/* Deregister the ATA interface */
	FUNC0(op);

	/* Clean up DMA */
	task_irq = FUNC2(priv->dmatsk);
	FUNC3(task_irq);
	FUNC1(priv->dmatsk);
	FUNC3(priv->ata_irq);

	return 0;
}