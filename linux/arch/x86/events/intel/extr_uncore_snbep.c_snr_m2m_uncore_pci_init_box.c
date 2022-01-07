
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intel_uncore_box {int flags; struct pci_dev* pci_dev; } ;


 int IVBEP_PMON_BOX_CTL_INT ;
 int UNCORE_BOX_FLAG_CTL_OFFS8 ;
 int __set_bit (int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int uncore_pci_box_ctl (struct intel_uncore_box*) ;

__attribute__((used)) static void snr_m2m_uncore_pci_init_box(struct intel_uncore_box *box)
{
 struct pci_dev *pdev = box->pci_dev;
 int box_ctl = uncore_pci_box_ctl(box);

 __set_bit(UNCORE_BOX_FLAG_CTL_OFFS8, &box->flags);
 pci_write_config_dword(pdev, box_ctl, IVBEP_PMON_BOX_CTL_INT);
}
