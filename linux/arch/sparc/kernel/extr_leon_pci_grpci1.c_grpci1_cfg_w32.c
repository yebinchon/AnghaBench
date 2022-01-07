
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct grpci1_priv {unsigned int pci_conf; TYPE_1__* regs; } ;
struct TYPE_2__ {int cfg_stat; } ;


 int EINVAL ;
 int LEON3_BYPASS_STORE_PA (unsigned int*,int ) ;
 int REGLOAD (int ) ;
 int REGSTORE (int ,int) ;
 unsigned int TGT ;
 int swab32 (int) ;

__attribute__((used)) static int grpci1_cfg_w32(struct grpci1_priv *priv, unsigned int bus,
    unsigned int devfn, int where, u32 val)
{
 unsigned int *pci_conf;
 u32 cfg;

 if (where & 0x3)
  return -EINVAL;

 if (bus == 0) {
  devfn += (0x8 * 6);
 } else if (bus == TGT) {
  bus = 0;
  devfn = 0;
 }


 cfg = REGLOAD(priv->regs->cfg_stat);
 REGSTORE(priv->regs->cfg_stat, (cfg & ~(0xf << 23)) | (bus << 23));

 pci_conf = (unsigned int *) (priv->pci_conf |
      (devfn << 8) | (where & 0xfc));
 LEON3_BYPASS_STORE_PA(pci_conf, swab32(val));

 return 0;
}
