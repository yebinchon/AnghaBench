
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int flags; } ;
typedef int pm_message_t ;


 int ATA_FLAG_ACPI_SATA ;
 int pata_acpi_set_state (struct ata_port*,int ) ;
 int sata_acpi_set_state (struct ata_port*,int ) ;

void ata_acpi_set_state(struct ata_port *ap, pm_message_t state)
{
 if (ap->flags & ATA_FLAG_ACPI_SATA)
  sata_acpi_set_state(ap, state);
 else
  pata_acpi_set_state(ap, state);
}
