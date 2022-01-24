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
struct pata_imx_priv {scalar_t__ host_regs; int /*<<< orphan*/  clk; } ;
struct ata_timing {int setup; int act8b; } ;
struct ata_device {scalar_t__ pio_mode; } ;

/* Variables and functions */
 scalar_t__ PATA_IMX_ATA_TIME_1 ; 
 scalar_t__ PATA_IMX_ATA_TIME_2R ; 
 scalar_t__ PATA_IMX_ATA_TIME_2W ; 
 scalar_t__ PATA_IMX_ATA_TIME_4 ; 
 scalar_t__ PATA_IMX_ATA_TIME_9 ; 
 scalar_t__ PATA_IMX_ATA_TIME_AX ; 
 scalar_t__ PATA_IMX_ATA_TIME_OFF ; 
 scalar_t__ PATA_IMX_ATA_TIME_ON ; 
 scalar_t__ PATA_IMX_ATA_TIME_PIO_RDX ; 
 scalar_t__ XFER_PIO_0 ; 
 scalar_t__ XFER_PIO_4 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,scalar_t__,struct ata_timing*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int* pio_t4 ; 
 int* pio_t9 ; 
 int* pio_tA ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ata_device *adev,
				struct pata_imx_priv *priv)
{
	struct ata_timing timing;
	unsigned long clkrate;
	u32 T, mode;

	clkrate = FUNC1(priv->clk);

	if (adev->pio_mode < XFER_PIO_0 || adev->pio_mode > XFER_PIO_4 ||
	    !clkrate)
		return;

	T = 1000000000 / clkrate;
	FUNC0(adev, adev->pio_mode, &timing, T * 1000, 0);

	mode = adev->pio_mode - XFER_PIO_0;

	FUNC2(3, priv->host_regs + PATA_IMX_ATA_TIME_OFF);
	FUNC2(3, priv->host_regs + PATA_IMX_ATA_TIME_ON);
	FUNC2(timing.setup, priv->host_regs + PATA_IMX_ATA_TIME_1);
	FUNC2(timing.act8b, priv->host_regs + PATA_IMX_ATA_TIME_2W);
	FUNC2(timing.act8b, priv->host_regs + PATA_IMX_ATA_TIME_2R);
	FUNC2(1, priv->host_regs + PATA_IMX_ATA_TIME_PIO_RDX);

	FUNC2(pio_t4[mode] / T + 1, priv->host_regs + PATA_IMX_ATA_TIME_4);
	FUNC2(pio_t9[mode] / T + 1, priv->host_regs + PATA_IMX_ATA_TIME_9);
	FUNC2(pio_tA[mode] / T + 1, priv->host_regs + PATA_IMX_ATA_TIME_AX);
}