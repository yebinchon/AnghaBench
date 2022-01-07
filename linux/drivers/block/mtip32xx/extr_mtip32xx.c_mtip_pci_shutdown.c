
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct driver_data {int dummy; } ;


 int mtip_block_shutdown (struct driver_data*) ;
 struct driver_data* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void mtip_pci_shutdown(struct pci_dev *pdev)
{
 struct driver_data *dd = pci_get_drvdata(pdev);
 if (dd)
  mtip_block_shutdown(dd);
}
