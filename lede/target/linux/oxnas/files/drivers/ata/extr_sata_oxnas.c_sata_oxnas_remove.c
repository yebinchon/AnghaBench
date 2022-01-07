
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_oxnas_host_priv {int clk; int rst_phy; int rst_link; int rst_sata; int core_base; int sgdma_base; int port_base; int irq; } ;
struct platform_device {int dev; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 struct ata_host* dev_get_drvdata (int *) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int sata_oxnas_remove(struct platform_device *ofdev)
{
 struct ata_host *host = dev_get_drvdata(&ofdev->dev);
 struct sata_oxnas_host_priv *host_priv = host->private_data;

 ata_host_detach(host);

 irq_dispose_mapping(host_priv->irq);
 iounmap(host_priv->port_base);
 iounmap(host_priv->sgdma_base);
 iounmap(host_priv->core_base);


 reset_control_assert(host_priv->rst_sata);
 reset_control_assert(host_priv->rst_link);
 reset_control_assert(host_priv->rst_phy);


 clk_disable_unprepare(host_priv->clk);
 clk_put(host_priv->clk);

 return 0;
}
