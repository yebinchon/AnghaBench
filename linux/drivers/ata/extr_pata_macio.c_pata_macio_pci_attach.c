
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;
struct pata_macio_priv {int * dev; struct pci_dev* pdev; int node; } ;
struct device_node {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct pata_macio_priv* devm_kzalloc (int *,int,int ) ;
 int of_node_get (struct device_node*) ;
 scalar_t__ pata_macio_common_init (struct pata_macio_priv*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 scalar_t__ pci_request_regions (struct pci_dev*,char*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ pcim_enable_device (struct pci_dev*) ;

__attribute__((used)) static int pata_macio_pci_attach(struct pci_dev *pdev,
     const struct pci_device_id *id)
{
 struct pata_macio_priv *priv;
 struct device_node *np;
 resource_size_t rbase;


 np = pci_device_to_OF_node(pdev);
 if (np == ((void*)0)) {
  dev_err(&pdev->dev,
   "Cannot find OF device node for controller\n");
  return -ENODEV;
 }


 if (pcim_enable_device(pdev)) {
  dev_err(&pdev->dev,
   "Cannot enable controller PCI device\n");
  return -ENXIO;
 }


 priv = devm_kzalloc(&pdev->dev,
       sizeof(struct pata_macio_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->node = of_node_get(np);
 priv->pdev = pdev;
 priv->dev = &pdev->dev;


 if (pci_request_regions(pdev, "pata-macio")) {
  dev_err(&pdev->dev,
   "Cannot obtain PCI resources\n");
  return -EBUSY;
 }


 rbase = pci_resource_start(pdev, 0);
 if (pata_macio_common_init(priv,
       rbase + 0x2000,
       rbase + 0x1000,
       rbase,
       pdev->irq))
  return -ENXIO;

 return 0;
}
