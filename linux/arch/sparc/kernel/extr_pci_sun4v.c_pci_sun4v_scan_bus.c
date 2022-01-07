
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct property {int dummy; } ;
struct pci_pbm_info {int pci_bus; int is_66mhz_capable; TYPE_2__* op; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct property* of_find_property (struct device_node*,char*,int *) ;
 int pci_scan_one_pbm (struct pci_pbm_info*,struct device*) ;

__attribute__((used)) static void pci_sun4v_scan_bus(struct pci_pbm_info *pbm, struct device *parent)
{
 struct property *prop;
 struct device_node *dp;

 dp = pbm->op->dev.of_node;
 prop = of_find_property(dp, "66mhz-capable", ((void*)0));
 pbm->is_66mhz_capable = (prop != ((void*)0));
 pbm->pci_bus = pci_scan_one_pbm(pbm, parent);


}
