
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pata_acpi {unsigned long* mask; } ;
struct ata_device {size_t devno; TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {struct pata_acpi* private_data; } ;



__attribute__((used)) static unsigned long pacpi_mode_filter(struct ata_device *adev, unsigned long mask)
{
 struct pata_acpi *acpi = adev->link->ap->private_data;
 return mask & acpi->mask[adev->devno];
}
