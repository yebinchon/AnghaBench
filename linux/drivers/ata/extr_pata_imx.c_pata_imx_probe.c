
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;
struct pata_imx_priv {scalar_t__ clk; scalar_t__ host_regs; } ;
struct TYPE_2__ {scalar_t__ ctl_addr; scalar_t__ altstatus_addr; scalar_t__ cmd_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int flags; int pio_mask; int * ops; } ;
struct ata_host {struct ata_port** ports; struct pata_imx_priv* private_data; } ;


 int ATA_FLAG_SLAVE_POSS ;
 int ATA_PIO4 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ PATA_IMX_ATA_CONTROL ;
 int PATA_IMX_ATA_CTRL_ATA_RST_B ;
 int PATA_IMX_ATA_CTRL_FIFO_RST_B ;
 int PATA_IMX_ATA_INTR_ATA_INTRQ2 ;
 scalar_t__ PATA_IMX_ATA_INT_EN ;
 scalar_t__ PATA_IMX_DRIVE_CONTROL ;
 scalar_t__ PATA_IMX_DRIVE_DATA ;
 int PTR_ERR (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int ata_host_activate (struct ata_host*,int,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (int *,int) ;
 int ata_port_desc (struct ata_port*,char*,scalar_t__,scalar_t__) ;
 int ata_sff_interrupt ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int *,char*) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 struct pata_imx_priv* devm_kzalloc (int *,int,int ) ;
 int pata_imx_port_ops ;
 int pata_imx_setup_port (TYPE_1__*) ;
 int pata_imx_sht ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int pata_imx_probe(struct platform_device *pdev)
{
 struct ata_host *host;
 struct ata_port *ap;
 struct pata_imx_priv *priv;
 int irq = 0;
 struct resource *io_res;
 int ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 priv = devm_kzalloc(&pdev->dev,
    sizeof(struct pata_imx_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(&pdev->dev, "Failed to get clock\n");
  return PTR_ERR(priv->clk);
 }

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  return ret;

 host = ata_host_alloc(&pdev->dev, 1);
 if (!host) {
  ret = -ENOMEM;
  goto err;
 }

 host->private_data = priv;
 ap = host->ports[0];

 ap->ops = &pata_imx_port_ops;
 ap->pio_mask = ATA_PIO4;
 ap->flags |= ATA_FLAG_SLAVE_POSS;

 io_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->host_regs = devm_ioremap_resource(&pdev->dev, io_res);
 if (IS_ERR(priv->host_regs)) {
  ret = PTR_ERR(priv->host_regs);
  goto err;
 }

 ap->ioaddr.cmd_addr = priv->host_regs + PATA_IMX_DRIVE_DATA;
 ap->ioaddr.ctl_addr = priv->host_regs + PATA_IMX_DRIVE_CONTROL;

 ap->ioaddr.altstatus_addr = ap->ioaddr.ctl_addr;

 pata_imx_setup_port(&ap->ioaddr);

 ata_port_desc(ap, "cmd 0x%llx ctl 0x%llx",
  (unsigned long long)io_res->start + PATA_IMX_DRIVE_DATA,
  (unsigned long long)io_res->start + PATA_IMX_DRIVE_CONTROL);


 __raw_writel(PATA_IMX_ATA_CTRL_FIFO_RST_B |
   PATA_IMX_ATA_CTRL_ATA_RST_B,
   priv->host_regs + PATA_IMX_ATA_CONTROL);

 __raw_writel(PATA_IMX_ATA_INTR_ATA_INTRQ2,
   priv->host_regs + PATA_IMX_ATA_INT_EN);


 ret = ata_host_activate(host, irq, ata_sff_interrupt, 0,
    &pata_imx_sht);

 if (ret)
  goto err;

 return 0;
err:
 clk_disable_unprepare(priv->clk);

 return ret;
}
