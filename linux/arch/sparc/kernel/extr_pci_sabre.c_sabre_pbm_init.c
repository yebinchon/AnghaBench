
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pci_pbm_info {scalar_t__ controller_regs; scalar_t__ pci_csr; scalar_t__ pci_afar; scalar_t__ pci_afsr; } ;


 int PBM_CHIP_TYPE_SABRE ;
 scalar_t__ SABRE_PCICTRL ;
 scalar_t__ SABRE_PIOAFAR ;
 scalar_t__ SABRE_PIOAFSR ;
 int psycho_pbm_init_common (struct pci_pbm_info*,struct platform_device*,char*,int ) ;
 int sabre_scan_bus (struct pci_pbm_info*,int *) ;

__attribute__((used)) static void sabre_pbm_init(struct pci_pbm_info *pbm,
      struct platform_device *op)
{
 psycho_pbm_init_common(pbm, op, "SABRE", PBM_CHIP_TYPE_SABRE);
 pbm->pci_afsr = pbm->controller_regs + SABRE_PIOAFSR;
 pbm->pci_afar = pbm->controller_regs + SABRE_PIOAFAR;
 pbm->pci_csr = pbm->controller_regs + SABRE_PCICTRL;
 sabre_scan_bus(pbm, &op->dev);
}
