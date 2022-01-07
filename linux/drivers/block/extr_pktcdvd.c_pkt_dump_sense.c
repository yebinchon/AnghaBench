
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int ascq; int asc; } ;
struct pktcdvd_device {int dummy; } ;
struct packet_command {int cmd; struct scsi_sense_hdr* sshdr; } ;


 int CDROM_PACKET_SIZE ;
 int pkt_err (struct pktcdvd_device*,char*,int ,int ,...) ;
 int sense_key_string (int ) ;

__attribute__((used)) static void pkt_dump_sense(struct pktcdvd_device *pd,
      struct packet_command *cgc)
{
 struct scsi_sense_hdr *sshdr = cgc->sshdr;

 if (sshdr)
  pkt_err(pd, "%*ph - sense %02x.%02x.%02x (%s)\n",
   CDROM_PACKET_SIZE, cgc->cmd,
   sshdr->sense_key, sshdr->asc, sshdr->ascq,
   sense_key_string(sshdr->sense_key));
 else
  pkt_err(pd, "%*ph - no sense\n", CDROM_PACKET_SIZE, cgc->cmd);
}
