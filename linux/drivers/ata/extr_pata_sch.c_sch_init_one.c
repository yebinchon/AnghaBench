
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct ata_port_info {int dummy; } ;


 int DRV_VERSION ;
 int ata_pci_bmdma_init_one (struct pci_dev*,struct ata_port_info const**,int *,int *,int ) ;
 int ata_print_version_once (int *,int ) ;
 struct ata_port_info const sch_port_info ;
 int sch_sht ;

__attribute__((used)) static int sch_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 const struct ata_port_info *ppi[] = { &sch_port_info, ((void*)0) };

 ata_print_version_once(&pdev->dev, DRV_VERSION);

 return ata_pci_bmdma_init_one(pdev, ppi, &sch_sht, ((void*)0), 0);
}
