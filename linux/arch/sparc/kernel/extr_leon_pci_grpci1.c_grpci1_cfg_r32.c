
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct grpci1_priv {unsigned int pci_conf; TYPE_1__* regs; } ;
struct TYPE_2__ {int stat_cmd; int cfg_stat; } ;


 int CFGSTAT_CTO ;
 int EINVAL ;
 int LEON3_BYPASS_LOAD_PA (int*) ;
 int PCI_COMMAND ;
 int REGLOAD (int ) ;
 int REGSTORE (int ,int) ;
 unsigned int TGT ;
 int grpci1_cfg_w32 (struct grpci1_priv*,unsigned int,int ,int ,int) ;
 int swab32 (int) ;

__attribute__((used)) static int grpci1_cfg_r32(struct grpci1_priv *priv, unsigned int bus,
    unsigned int devfn, int where, u32 *val)
{
 u32 *pci_conf, tmp, cfg;

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


 pci_conf = (u32 *) (priv->pci_conf | (devfn << 8) | (where & 0xfc));
 tmp = LEON3_BYPASS_LOAD_PA(pci_conf);


 if (REGLOAD(priv->regs->cfg_stat) & CFGSTAT_CTO) {
  *val = 0xffffffff;

  tmp = REGLOAD(priv->regs->stat_cmd);
  grpci1_cfg_w32(priv, TGT, 0, PCI_COMMAND, tmp);
 } else {

  *val = swab32(tmp);
 }

 return 0;
}
