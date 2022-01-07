
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_port_probe (struct ata_port*) ;

int ata_sas_sync_probe(struct ata_port *ap)
{
 return ata_port_probe(ap);
}
