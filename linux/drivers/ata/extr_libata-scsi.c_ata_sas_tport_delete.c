
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_tport_delete (struct ata_port*) ;

void ata_sas_tport_delete(struct ata_port *ap)
{
 ata_tport_delete(ap);
}
