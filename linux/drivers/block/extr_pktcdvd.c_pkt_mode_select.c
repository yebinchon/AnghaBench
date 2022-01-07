
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int* buffer; int buflen; int data_direction; } ;


 int CGC_DATA_WRITE ;
 int GPCMD_MODE_SELECT_10 ;
 int memset (int*,int ,int) ;
 int pkt_generic_packet (struct pktcdvd_device*,struct packet_command*) ;

__attribute__((used)) static int pkt_mode_select(struct pktcdvd_device *pd, struct packet_command *cgc)
{
 memset(cgc->cmd, 0, sizeof(cgc->cmd));
 memset(cgc->buffer, 0, 2);
 cgc->cmd[0] = GPCMD_MODE_SELECT_10;
 cgc->cmd[1] = 0x10;
 cgc->cmd[7] = cgc->buflen >> 8;
 cgc->cmd[8] = cgc->buflen & 0xff;
 cgc->data_direction = CGC_DATA_WRITE;
 return pkt_generic_packet(pd, cgc);
}
