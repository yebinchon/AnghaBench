
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbus_dram_target_info {int dummy; } ;
struct ahci_host_priv {int dummy; } ;


 int ENODEV ;
 int ahci_mvebu_mbus_config (struct ahci_host_priv*,struct mbus_dram_target_info const*) ;
 int ahci_mvebu_regret_option (struct ahci_host_priv*) ;
 struct mbus_dram_target_info* mv_mbus_dram_info () ;

__attribute__((used)) static int ahci_mvebu_armada_380_config(struct ahci_host_priv *hpriv)
{
 const struct mbus_dram_target_info *dram;
 int rc = 0;

 dram = mv_mbus_dram_info();
 if (dram)
  ahci_mvebu_mbus_config(hpriv, dram);
 else
  rc = -ENODEV;

 ahci_mvebu_regret_option(hpriv);

 return rc;
}
