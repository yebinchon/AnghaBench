
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct xilly_endpoint* pci_get_drvdata (struct pci_dev*) ;
 int xillybus_endpoint_remove (struct xilly_endpoint*) ;

__attribute__((used)) static void xilly_remove(struct pci_dev *pdev)
{
 struct xilly_endpoint *endpoint = pci_get_drvdata(pdev);

 xillybus_endpoint_remove(endpoint);
}
