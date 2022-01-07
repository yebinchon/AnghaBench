
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int buflen; int quiet; } ;
struct TYPE_4__ {int disc_information_length; } ;
typedef TYPE_1__ disc_information ;


 int CGC_DATA_READ ;
 int GPCMD_READ_DISC_INFO ;
 int be16_to_cpu (int ) ;
 int init_cdrom_command (struct packet_command*,TYPE_1__*,int,int ) ;
 int pkt_generic_packet (struct pktcdvd_device*,struct packet_command*) ;

__attribute__((used)) static int pkt_get_disc_info(struct pktcdvd_device *pd, disc_information *di)
{
 struct packet_command cgc;
 int ret;


 init_cdrom_command(&cgc, di, sizeof(*di), CGC_DATA_READ);
 cgc.cmd[0] = GPCMD_READ_DISC_INFO;
 cgc.cmd[8] = cgc.buflen = 2;
 cgc.quiet = 1;

 ret = pkt_generic_packet(pd, &cgc);
 if (ret)
  return ret;




 cgc.buflen = be16_to_cpu(di->disc_information_length) +
       sizeof(di->disc_information_length);

 if (cgc.buflen > sizeof(disc_information))
  cgc.buflen = sizeof(disc_information);

 cgc.cmd[8] = cgc.buflen;
 return pkt_generic_packet(pd, &cgc);
}
