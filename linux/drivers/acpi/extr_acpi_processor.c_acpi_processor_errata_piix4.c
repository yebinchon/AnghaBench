
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int revision; } ;
struct TYPE_3__ {int throttle; int fdma; scalar_t__ bmisx; } ;
struct TYPE_4__ {TYPE_1__ piix4; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EINVAL ;
 int PCI_ANY_ID ;
 int PCI_DEVICE_ID_INTEL_82371AB ;
 int PCI_DEVICE_ID_INTEL_82371AB_0 ;
 int PCI_VENDOR_ID_INTEL ;
 TYPE_2__ errata ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_subsys (int ,int ,int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int acpi_processor_errata_piix4(struct pci_dev *dev)
{
 u8 value1 = 0;
 u8 value2 = 0;


 if (!dev)
  return -EINVAL;





 switch (dev->revision) {
 case 0:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found PIIX4 A-step\n"));
  break;
 case 1:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found PIIX4 B-step\n"));
  break;
 case 2:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found PIIX4E\n"));
  break;
 case 3:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found PIIX4M\n"));
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found unknown PIIX4\n"));
  break;
 }

 switch (dev->revision) {

 case 0:
 case 1:







  errata.piix4.throttle = 1;


 case 2:
 case 3:
  dev = pci_get_subsys(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_82371AB,
         PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
  if (dev) {
   errata.piix4.bmisx = pci_resource_start(dev, 4);
   pci_dev_put(dev);
  }
  dev = pci_get_subsys(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_82371AB_0,
         PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
  if (dev) {
   pci_read_config_byte(dev, 0x76, &value1);
   pci_read_config_byte(dev, 0x77, &value2);
   if ((value1 & 0x80) || (value2 & 0x80))
    errata.piix4.fdma = 1;
   pci_dev_put(dev);
  }

  break;
 }

 if (errata.piix4.bmisx)
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Bus master activity detection (BM-IDE) erratum enabled\n"));
 if (errata.piix4.fdma)
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Type-F DMA livelock erratum (C3 disabled)\n"));

 return 0;
}
