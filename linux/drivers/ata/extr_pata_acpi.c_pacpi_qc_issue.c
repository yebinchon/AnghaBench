
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct pata_acpi {struct ata_device* last; TYPE_1__ gtm; } ;
struct ata_queued_cmd {struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {struct pata_acpi* private_data; } ;
struct ata_device {int dummy; } ;


 unsigned int ata_bmdma_qc_issue (struct ata_queued_cmd*) ;
 scalar_t__ ata_dma_enabled (struct ata_device*) ;
 int pacpi_set_dmamode (struct ata_port*,struct ata_device*) ;
 int pacpi_set_piomode (struct ata_port*,struct ata_device*) ;

__attribute__((used)) static unsigned int pacpi_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_device *adev = qc->dev;
 struct pata_acpi *acpi = ap->private_data;

 if (acpi->gtm.flags & 0x10)
  return ata_bmdma_qc_issue(qc);

 if (adev != acpi->last) {
  pacpi_set_piomode(ap, adev);
  if (ata_dma_enabled(adev))
   pacpi_set_dmamode(ap, adev);
  acpi->last = adev;
 }
 return ata_bmdma_qc_issue(qc);
}
