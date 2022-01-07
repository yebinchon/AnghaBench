
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,struct device_node*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t
show_pciobppath_attr(struct device * dev, struct device_attribute * attr, char * buf)
{
 struct pci_dev *pdev;
 struct device_node *dp;

 pdev = to_pci_dev(dev);
 dp = pdev->dev.of_node;

 return snprintf (buf, PAGE_SIZE, "%pOF\n", dp);
}
