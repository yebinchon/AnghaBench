
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ata_port {int flags; int port_no; TYPE_1__* host; int tdev; } ;
struct ata_device {int tdev; int devno; TYPE_2__* link; } ;
struct TYPE_6__ {struct ata_device* dev; } ;
struct ata_acpi_hotplug_context {int hp; TYPE_3__ data; } ;
struct acpi_device {scalar_t__ hp; } ;
struct TYPE_5__ {int pmp; struct ata_port* ap; } ;
struct TYPE_4__ {int * dev; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int ATA_FLAG_ACPI_SATA ;
 int GFP_KERNEL ;
 int NO_PORT_MULT ;
 int SATA_ADR (int ,int ) ;
 int acpi_initialize_hp_context (struct acpi_device*,int *,int ,int ) ;
 int acpi_preset_companion (int *,struct acpi_device*,int ) ;
 int ata_acpi_dev_notify_dock ;
 int ata_acpi_dev_uevent ;
 struct ata_acpi_hotplug_context* kzalloc (int,int ) ;
 scalar_t__ libata_noacpi ;
 int sata_pmp_attached (struct ata_port*) ;

void ata_acpi_bind_dev(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 struct acpi_device *port_companion = ACPI_COMPANION(&ap->tdev);
 struct acpi_device *host_companion = ACPI_COMPANION(ap->host->dev);
 struct acpi_device *parent, *adev;
 struct ata_acpi_hotplug_context *context;
 u64 adr;





 if (libata_noacpi || !host_companion ||
   (!(ap->flags & ATA_FLAG_ACPI_SATA) && !port_companion))
  return;

 if (ap->flags & ATA_FLAG_ACPI_SATA) {
  if (!sata_pmp_attached(ap))
   adr = SATA_ADR(ap->port_no, NO_PORT_MULT);
  else
   adr = SATA_ADR(ap->port_no, dev->link->pmp);
  parent = host_companion;
 } else {
  adr = dev->devno;
  parent = port_companion;
 }

 acpi_preset_companion(&dev->tdev, parent, adr);
 adev = ACPI_COMPANION(&dev->tdev);
 if (!adev || adev->hp)
  return;

 context = kzalloc(sizeof(*context), GFP_KERNEL);
 if (!context)
  return;

 context->data.dev = dev;
 acpi_initialize_hp_context(adev, &context->hp, ata_acpi_dev_notify_dock,
       ata_acpi_dev_uevent);
}
