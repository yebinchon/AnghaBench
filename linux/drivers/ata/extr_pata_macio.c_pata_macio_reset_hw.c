
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pata_macio_priv {scalar_t__ kind; scalar_t__ kauai_fcr; TYPE_2__* pdev; int aapl_bus_id; int node; scalar_t__ mediabay; int dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* feature_call ) (int ,int ,int ,int) ;} ;


 int IDE_WAKEUP_DELAY_MS ;
 int KAUAI_FCR_UATA_ENABLE ;
 int KAUAI_FCR_UATA_MAGIC ;
 int KAUAI_FCR_UATA_RESET_N ;
 int PMAC_FTR_IDE_ENABLE ;
 int PMAC_FTR_IDE_RESET ;
 scalar_t__ controller_ohare ;
 int dev_dbg (int ,char*) ;
 int dev_err (int *,char*,int) ;
 int msleep (int) ;
 int pci_restore_state (TYPE_2__*) ;
 int pci_set_master (TYPE_2__*) ;
 int pcim_enable_device (TYPE_2__*) ;
 TYPE_1__ ppc_md ;
 int stub1 (int ,int ,int ,int) ;
 int stub2 (int ,int ,int ,int) ;
 int stub3 (int ,int ,int ,int) ;
 int stub4 (int ,int ,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pata_macio_reset_hw(struct pata_macio_priv *priv, int resume)
{
 dev_dbg(priv->dev, "Enabling & resetting... \n");

 if (priv->mediabay)
  return;

 if (priv->kind == controller_ohare && !resume) {




  ppc_md.feature_call(PMAC_FTR_IDE_ENABLE, priv->node, 0, 1);
 } else {
  int rc;


  rc = ppc_md.feature_call(PMAC_FTR_IDE_RESET,
      priv->node, priv->aapl_bus_id, 1);
  ppc_md.feature_call(PMAC_FTR_IDE_ENABLE,
        priv->node, priv->aapl_bus_id, 1);
  msleep(10);

  if (rc == 0) {
   ppc_md.feature_call(PMAC_FTR_IDE_RESET,
         priv->node, priv->aapl_bus_id, 0);
   msleep(IDE_WAKEUP_DELAY_MS);
  }
 }


 if (priv->pdev && resume) {
  int rc;

  pci_restore_state(priv->pdev);
  rc = pcim_enable_device(priv->pdev);
  if (rc)
   dev_err(&priv->pdev->dev,
    "Failed to enable device after resume (%d)\n",
    rc);
  else
   pci_set_master(priv->pdev);
 }




 if (priv->kauai_fcr)
  writel(KAUAI_FCR_UATA_MAGIC |
         KAUAI_FCR_UATA_RESET_N |
         KAUAI_FCR_UATA_ENABLE, priv->kauai_fcr);
}
