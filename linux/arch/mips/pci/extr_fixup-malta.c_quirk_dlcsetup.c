
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PIIX4_FUNC0_DLC ;
 int PIIX4_FUNC0_DLC_DELAYED_TRANSACTION_EN ;
 int PIIX4_FUNC0_DLC_PASSIVE_RELEASE_EN ;
 int PIIX4_FUNC0_DLC_USBPR_EN ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void quirk_dlcsetup(struct pci_dev *dev)
{
 u8 odlc, ndlc;

 (void) pci_read_config_byte(dev, PIIX4_FUNC0_DLC, &odlc);

 ndlc = odlc | PIIX4_FUNC0_DLC_USBPR_EN |
        PIIX4_FUNC0_DLC_PASSIVE_RELEASE_EN |
        PIIX4_FUNC0_DLC_DELAYED_TRANSACTION_EN;
 (void) pci_write_config_byte(dev, PIIX4_FUNC0_DLC, ndlc);
}
