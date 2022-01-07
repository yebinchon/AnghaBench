
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_port {int flags; int tdev; int pflags; int __acpi_init_gtm; int port_no; TYPE_2__* host; } ;
struct TYPE_3__ {struct ata_port* ap; } ;
struct ata_acpi_hotplug_context {int hp; TYPE_1__ data; } ;
struct acpi_device {scalar_t__ hp; } ;
struct TYPE_4__ {int * dev; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int ATA_FLAG_ACPI_SATA ;
 int ATA_PFLAG_INIT_GTM_VALID ;
 int GFP_KERNEL ;
 int acpi_initialize_hp_context (struct acpi_device*,int *,int ,int ) ;
 int acpi_preset_companion (int *,struct acpi_device*,int ) ;
 int ata_acpi_ap_notify_dock ;
 int ata_acpi_ap_uevent ;
 scalar_t__ ata_acpi_gtm (struct ata_port*,int *) ;
 struct ata_acpi_hotplug_context* kzalloc (int,int ) ;
 scalar_t__ libata_noacpi ;

void ata_acpi_bind_port(struct ata_port *ap)
{
 struct acpi_device *host_companion = ACPI_COMPANION(ap->host->dev);
 struct acpi_device *adev;
 struct ata_acpi_hotplug_context *context;

 if (libata_noacpi || ap->flags & ATA_FLAG_ACPI_SATA || !host_companion)
  return;

 acpi_preset_companion(&ap->tdev, host_companion, ap->port_no);

 if (ata_acpi_gtm(ap, &ap->__acpi_init_gtm) == 0)
  ap->pflags |= ATA_PFLAG_INIT_GTM_VALID;

 adev = ACPI_COMPANION(&ap->tdev);
 if (!adev || adev->hp)
  return;

 context = kzalloc(sizeof(*context), GFP_KERNEL);
 if (!context)
  return;

 context->data.ap = ap;
 acpi_initialize_hp_context(adev, &context->hp, ata_acpi_ap_notify_dock,
       ata_acpi_ap_uevent);
}
