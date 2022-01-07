
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_ahci_priv {int sata_clk; } ;
struct ata_host {struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {struct imx_ahci_priv* plat_data; } ;


 int clk_disable_unprepare (int ) ;
 int imx_sata_disable (struct ahci_host_priv*) ;

__attribute__((used)) static void ahci_imx_host_stop(struct ata_host *host)
{
 struct ahci_host_priv *hpriv = host->private_data;
 struct imx_ahci_priv *imxpriv = hpriv->plat_data;

 imx_sata_disable(hpriv);
 clk_disable_unprepare(imxpriv->sata_clk);
}
