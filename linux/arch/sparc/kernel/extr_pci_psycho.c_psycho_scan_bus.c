
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int pci_bus; scalar_t__ is_66mhz_capable; } ;
struct device {int dummy; } ;


 int pbm_config_busmastering (struct pci_pbm_info*) ;
 int pci_scan_one_pbm (struct pci_pbm_info*,struct device*) ;
 int psycho_register_error_handlers (struct pci_pbm_info*) ;

__attribute__((used)) static void psycho_scan_bus(struct pci_pbm_info *pbm,
       struct device *parent)
{
 pbm_config_busmastering(pbm);
 pbm->is_66mhz_capable = 0;
 pbm->pci_bus = pci_scan_one_pbm(pbm, parent);




 psycho_register_error_handlers(pbm);
}
