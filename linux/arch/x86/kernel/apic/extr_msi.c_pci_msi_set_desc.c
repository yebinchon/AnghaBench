
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msi_desc {int dummy; } ;
struct TYPE_3__ {int msi_dev; int msi_hwirq; } ;
typedef TYPE_1__ msi_alloc_info_t ;


 int pci_msi_domain_calc_hwirq (int ,struct msi_desc*) ;

void pci_msi_set_desc(msi_alloc_info_t *arg, struct msi_desc *desc)
{
 arg->msi_hwirq = pci_msi_domain_calc_hwirq(arg->msi_dev, desc);
}
