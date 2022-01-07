
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct grpci1_priv {int pci_err_mask; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCI_STATUS ;
 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_PARITY ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int PCI_STATUS_REC_TARGET_ABORT ;
 int PCI_STATUS_SIG_SYSTEM_ERROR ;
 int PCI_STATUS_SIG_TARGET_ABORT ;
 int TGT ;
 int dev_err (int ,char*) ;
 int grpci1_cfg_r16 (struct grpci1_priv*,int ,int ,int ,int*) ;
 int grpci1_cfg_w16 (struct grpci1_priv*,int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t grpci1_err_interrupt(int irq, void *arg)
{
 struct grpci1_priv *priv = arg;
 u32 status;

 grpci1_cfg_r16(priv, TGT, 0, PCI_STATUS, &status);
 status &= priv->pci_err_mask;

 if (status == 0)
  return IRQ_NONE;

 if (status & PCI_STATUS_PARITY)
  dev_err(priv->dev, "Data Parity Error\n");

 if (status & PCI_STATUS_SIG_TARGET_ABORT)
  dev_err(priv->dev, "Signalled Target Abort\n");

 if (status & PCI_STATUS_REC_TARGET_ABORT)
  dev_err(priv->dev, "Received Target Abort\n");

 if (status & PCI_STATUS_REC_MASTER_ABORT)
  dev_err(priv->dev, "Received Master Abort\n");

 if (status & PCI_STATUS_SIG_SYSTEM_ERROR)
  dev_err(priv->dev, "Signalled System Error\n");

 if (status & PCI_STATUS_DETECTED_PARITY)
  dev_err(priv->dev, "Parity Error\n");


 grpci1_cfg_w16(priv, TGT, 0, PCI_STATUS, status);

 return IRQ_HANDLED;
}
