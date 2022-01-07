
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BONITO_PCIMAP_CFG ;
 int GT_PCI0_IACK_OFS ;
 int GT_READ (int ) ;






 int MSC01_PCI_IACK ;
 int MSC_READ (int ,int) ;
 int __raw_readl (int *) ;
 scalar_t__ _pcictrl_bonito_pcicfg ;
 int iob () ;
 int mips_revision_sconid ;
 int pr_emerg (char*) ;

__attribute__((used)) static inline int mips_pcibios_iack(void)
{
 int irq;





 switch (mips_revision_sconid) {
 case 130:
 case 131:
 case 129:
 case 128:
  MSC_READ(MSC01_PCI_IACK, irq);
  irq &= 0xff;
  break;
 case 132:
  irq = GT_READ(GT_PCI0_IACK_OFS);
  irq &= 0xff;
  break;
 case 133:





  BONITO_PCIMAP_CFG = 0x20000;


  (void) BONITO_PCIMAP_CFG;
  iob();

  irq = __raw_readl((u32 *)_pcictrl_bonito_pcicfg);
  iob();
  irq &= 0xff;
  BONITO_PCIMAP_CFG = 0;
  break;
 default:
  pr_emerg("Unknown system controller.\n");
  return -1;
 }
 return irq;
}
