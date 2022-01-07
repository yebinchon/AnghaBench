
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; } ;


 int cs5520_set_timings (struct ata_port*,struct ata_device*,int ) ;

__attribute__((used)) static void cs5520_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 cs5520_set_timings(ap, adev, adev->pio_mode);
}
