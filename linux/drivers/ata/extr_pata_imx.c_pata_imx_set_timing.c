
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pata_imx_priv {scalar_t__ host_regs; int clk; } ;
struct ata_timing {int setup; int act8b; } ;
struct ata_device {scalar_t__ pio_mode; } ;


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
 int ata_timing_compute (struct ata_device*,scalar_t__,struct ata_timing*,int,int ) ;
 unsigned long clk_get_rate (int ) ;
 int* pio_t4 ;
 int* pio_t9 ;
 int* pio_tA ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void pata_imx_set_timing(struct ata_device *adev,
    struct pata_imx_priv *priv)
{
 struct ata_timing timing;
 unsigned long clkrate;
 u32 T, mode;

 clkrate = clk_get_rate(priv->clk);

 if (adev->pio_mode < XFER_PIO_0 || adev->pio_mode > XFER_PIO_4 ||
     !clkrate)
  return;

 T = 1000000000 / clkrate;
 ata_timing_compute(adev, adev->pio_mode, &timing, T * 1000, 0);

 mode = adev->pio_mode - XFER_PIO_0;

 writeb(3, priv->host_regs + PATA_IMX_ATA_TIME_OFF);
 writeb(3, priv->host_regs + PATA_IMX_ATA_TIME_ON);
 writeb(timing.setup, priv->host_regs + PATA_IMX_ATA_TIME_1);
 writeb(timing.act8b, priv->host_regs + PATA_IMX_ATA_TIME_2W);
 writeb(timing.act8b, priv->host_regs + PATA_IMX_ATA_TIME_2R);
 writeb(1, priv->host_regs + PATA_IMX_ATA_TIME_PIO_RDX);

 writeb(pio_t4[mode] / T + 1, priv->host_regs + PATA_IMX_ATA_TIME_4);
 writeb(pio_t9[mode] / T + 1, priv->host_regs + PATA_IMX_ATA_TIME_9);
 writeb(pio_tA[mode] / T + 1, priv->host_regs + PATA_IMX_ATA_TIME_AX);
}
