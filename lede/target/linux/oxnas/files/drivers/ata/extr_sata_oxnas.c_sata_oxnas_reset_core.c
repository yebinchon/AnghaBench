
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_oxnas_host_priv {int n_ports; int rst_link; int rst_sata; int rst_phy; int clk; } ;
struct ata_host {int * ports; struct sata_oxnas_host_priv* private_data; } ;


 int DPRINTK (char*) ;
 int clk_prepare_enable (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int sata_oxnas_link_write (int ,int,int) ;
 int udelay (int) ;
 int workaround5458 (struct ata_host*) ;

__attribute__((used)) static void sata_oxnas_reset_core(struct ata_host *ah)
{
 struct sata_oxnas_host_priv *host_priv = ah->private_data;
 int n;

 DPRINTK("ENTER\n");
 clk_prepare_enable(host_priv->clk);

 reset_control_assert(host_priv->rst_sata);
 reset_control_assert(host_priv->rst_link);
 reset_control_assert(host_priv->rst_phy);

 udelay(50);


 reset_control_deassert(host_priv->rst_phy);
 udelay(50);

 reset_control_deassert(host_priv->rst_sata);
 reset_control_deassert(host_priv->rst_link);
 udelay(50);

 workaround5458(ah);

 sata_oxnas_link_write(ah->ports[0], 0x60, 0x2988);

 for (n = 0; n < host_priv->n_ports; n++) {

  sata_oxnas_link_write(ah->ports[n], 0x70, 0x55629);
 }
 udelay(50);
}
