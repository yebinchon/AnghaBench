
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {scalar_t__ pio_mode; } ;


 scalar_t__ XFER_PIO_0 ;
 int pdc202xx_configure_piomode (struct ata_port*,struct ata_device*,scalar_t__) ;

__attribute__((used)) static void pdc202xx_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 pdc202xx_configure_piomode(ap, adev, adev->pio_mode - XFER_PIO_0);
}
