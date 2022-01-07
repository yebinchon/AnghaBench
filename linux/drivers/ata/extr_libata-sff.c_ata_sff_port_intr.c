
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dummy; } ;
struct ata_port {int dummy; } ;


 unsigned int __ata_sff_port_intr (struct ata_port*,struct ata_queued_cmd*,int) ;

unsigned int ata_sff_port_intr(struct ata_port *ap, struct ata_queued_cmd *qc)
{
 return __ata_sff_port_intr(ap, qc, 0);
}
