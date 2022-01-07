
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct piix_host_priv {int saved_iocfg; } ;
struct pci_dev {int dummy; } ;
struct ata_host {struct piix_host_priv* private_data; } ;


 int PIIX_IOCFG ;
 int ata_pci_remove_one (struct pci_dev*) ;
 struct ata_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void piix_remove_one(struct pci_dev *pdev)
{
 struct ata_host *host = pci_get_drvdata(pdev);
 struct piix_host_priv *hpriv = host->private_data;

 pci_write_config_dword(pdev, PIIX_IOCFG, hpriv->saved_iocfg);

 ata_pci_remove_one(pdev);
}
