
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct grpci2_priv {unsigned int pci_conf; TYPE_1__* regs; } ;
struct TYPE_2__ {int sts_cap; int ctrl; } ;


 int EINVAL ;
 int LEON3_BYPASS_STORE_PA (unsigned int*,int ) ;
 int REGLOAD (int ) ;
 int REGSTORE (int ,int) ;
 int STS_CFGERR ;
 int STS_CFGERRVALID ;
 unsigned int TGT ;
 int grpci2_dev_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swab32 (int ) ;

__attribute__((used)) static int grpci2_cfg_w32(struct grpci2_priv *priv, unsigned int bus,
    unsigned int devfn, int where, u32 val)
{
 unsigned int *pci_conf;
 unsigned long flags;

 if (where & 0x3)
  return -EINVAL;

 if (bus == 0) {
  devfn += (0x8 * 6);
 } else if (bus == TGT) {
  bus = 0;
  devfn = 0;
 }


 spin_lock_irqsave(&grpci2_dev_lock, flags);
 REGSTORE(priv->regs->ctrl, (REGLOAD(priv->regs->ctrl) & ~(0xff << 16)) |
       (bus << 16));
 spin_unlock_irqrestore(&grpci2_dev_lock, flags);


 REGSTORE(priv->regs->sts_cap, (STS_CFGERR | STS_CFGERRVALID));

 pci_conf = (unsigned int *) (priv->pci_conf |
      (devfn << 8) | (where & 0xfc));
 LEON3_BYPASS_STORE_PA(pci_conf, swab32(val));




 while ((REGLOAD(priv->regs->sts_cap) & STS_CFGERRVALID) == 0)
  ;

 return 0;
}
