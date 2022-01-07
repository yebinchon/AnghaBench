
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; int dev; } ;
struct agp_bridge_data {int major_version; scalar_t__ minor_version; } ;


 int dev_info (int *,char*,...) ;

__attribute__((used)) static void amd8151_init(struct pci_dev *pdev, struct agp_bridge_data *bridge)
{
 char *revstring;

 switch (pdev->revision) {
 case 0x01: revstring="A0"; break;
 case 0x02: revstring="A1"; break;
 case 0x11: revstring="B0"; break;
 case 0x12: revstring="B1"; break;
 case 0x13: revstring="B2"; break;
 case 0x14: revstring="B3"; break;
 default: revstring="??"; break;
 }

 dev_info(&pdev->dev, "AMD 8151 AGP Bridge rev %s\n", revstring);





 if (pdev->revision < 0x13) {
  dev_info(&pdev->dev, "correcting AGP revision (reports 3.5, is really 3.0)\n");
  bridge->major_version = 3;
  bridge->minor_version = 0;
 }
}
