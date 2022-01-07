
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {scalar_t__ pio_mode; } ;


 scalar_t__ XFER_PIO_0 ;
 int piix_set_timings (struct ata_port*,struct ata_device*,scalar_t__) ;

__attribute__((used)) static void piix_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 piix_set_timings(ap, adev, adev->pio_mode - XFER_PIO_0);
}
