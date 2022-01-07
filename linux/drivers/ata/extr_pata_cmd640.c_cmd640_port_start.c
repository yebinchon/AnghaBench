
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct cmd640_reg {int last; } ;
struct ata_port {struct cmd640_reg* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct cmd640_reg* devm_kzalloc (int *,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int cmd640_port_start(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 struct cmd640_reg *timing;

 timing = devm_kzalloc(&pdev->dev, sizeof(struct cmd640_reg), GFP_KERNEL);
 if (timing == ((void*)0))
  return -ENOMEM;
 timing->last = -1;
 ap->private_data = timing;
 return 0;
}
