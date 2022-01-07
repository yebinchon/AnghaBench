
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ahci_pmp_attach (struct ata_port*) ;
 int ahci_pmp_detach (struct ata_port*) ;
 int ahci_power_up (struct ata_port*) ;
 int ahci_rpm_get_port (struct ata_port*) ;
 int ahci_start_port (struct ata_port*) ;
 scalar_t__ sata_pmp_attached (struct ata_port*) ;

int ahci_port_resume(struct ata_port *ap)
{
 ahci_rpm_get_port(ap);

 ahci_power_up(ap);
 ahci_start_port(ap);

 if (sata_pmp_attached(ap))
  ahci_pmp_attach(ap);
 else
  ahci_pmp_detach(ap);

 return 0;
}
