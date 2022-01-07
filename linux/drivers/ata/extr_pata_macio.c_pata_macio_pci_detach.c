
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void pata_macio_pci_detach(struct pci_dev *pdev)
{
 struct ata_host *host = pci_get_drvdata(pdev);

 ata_host_detach(host);
}
