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
struct pata_imx_priv {int /*<<< orphan*/  clk; scalar_t__ host_regs; } ;
struct ata_host {struct pata_imx_priv* private_data; } ;

/* Variables and functions */
 scalar_t__ PATA_IMX_ATA_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ata_host* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ata_host *host = FUNC3(pdev);
	struct pata_imx_priv *priv = host->private_data;

	FUNC1(host);

	FUNC0(0, priv->host_regs + PATA_IMX_ATA_INT_EN);

	FUNC2(priv->clk);

	return 0;
}