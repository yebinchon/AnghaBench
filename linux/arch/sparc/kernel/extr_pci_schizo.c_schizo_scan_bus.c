
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_pbm_info {scalar_t__ chip_type; int pci_bus; TYPE_2__* op; int is_66mhz_capable; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 scalar_t__ PBM_CHIP_TYPE_TOMATILLO ;
 int * of_find_property (int ,char*,int *) ;
 int pbm_config_busmastering (struct pci_pbm_info*) ;
 int pci_scan_one_pbm (struct pci_pbm_info*,struct device*) ;
 int schizo_register_error_handlers (struct pci_pbm_info*) ;
 int tomatillo_register_error_handlers (struct pci_pbm_info*) ;

__attribute__((used)) static void schizo_scan_bus(struct pci_pbm_info *pbm, struct device *parent)
{
 pbm_config_busmastering(pbm);
 pbm->is_66mhz_capable =
  (of_find_property(pbm->op->dev.of_node, "66mhz-capable", ((void*)0))
   != ((void*)0));

 pbm->pci_bus = pci_scan_one_pbm(pbm, parent);

 if (pbm->chip_type == PBM_CHIP_TYPE_TOMATILLO)
  tomatillo_register_error_handlers(pbm);
 else
  schizo_register_error_handlers(pbm);
}
