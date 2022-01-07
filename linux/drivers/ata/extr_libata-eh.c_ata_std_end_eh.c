
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {struct Scsi_Host* scsi_host; } ;
struct Scsi_Host {scalar_t__ host_eh_scheduled; } ;



void ata_std_end_eh(struct ata_port *ap)
{
 struct Scsi_Host *host = ap->scsi_host;

 host->host_eh_scheduled = 0;
}
