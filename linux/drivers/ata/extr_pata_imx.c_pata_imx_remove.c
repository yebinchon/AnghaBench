
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pata_imx_priv {int clk; scalar_t__ host_regs; } ;
struct ata_host {struct pata_imx_priv* private_data; } ;


 scalar_t__ PATA_IMX_ATA_INT_EN ;
 int __raw_writel (int ,scalar_t__) ;
 int ata_host_detach (struct ata_host*) ;
 int clk_disable_unprepare (int ) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pata_imx_remove(struct platform_device *pdev)
{
 struct ata_host *host = platform_get_drvdata(pdev);
 struct pata_imx_priv *priv = host->private_data;

 ata_host_detach(host);

 __raw_writel(0, priv->host_regs + PATA_IMX_ATA_INT_EN);

 clk_disable_unprepare(priv->clk);

 return 0;
}
