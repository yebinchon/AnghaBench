
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int flags; } ;


 int PDC_FLAG_4_PORTS ;

__attribute__((used)) static unsigned int pdc_sata_nr_ports(const struct ata_port *ap)
{
 return (ap->flags & PDC_FLAG_4_PORTS) ? 4 : 2;
}
