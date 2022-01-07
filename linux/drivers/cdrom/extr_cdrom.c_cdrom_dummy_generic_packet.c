
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int stat; TYPE_1__* sshdr; } ;
struct cdrom_device_info {int dummy; } ;
struct TYPE_2__ {int sense_key; int asc; int ascq; } ;


 int EIO ;

int cdrom_dummy_generic_packet(struct cdrom_device_info *cdi,
          struct packet_command *cgc)
{
 if (cgc->sshdr) {
  cgc->sshdr->sense_key = 0x05;
  cgc->sshdr->asc = 0x20;
  cgc->sshdr->ascq = 0x00;
 }

 cgc->stat = -EIO;
 return -EIO;
}
