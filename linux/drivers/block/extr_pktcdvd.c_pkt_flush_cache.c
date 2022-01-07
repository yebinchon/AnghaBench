
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int quiet; } ;


 int CGC_DATA_NONE ;
 int GPCMD_FLUSH_CACHE ;
 int init_cdrom_command (struct packet_command*,int *,int ,int ) ;
 int pkt_generic_packet (struct pktcdvd_device*,struct packet_command*) ;

__attribute__((used)) static int pkt_flush_cache(struct pktcdvd_device *pd)
{
 struct packet_command cgc;

 init_cdrom_command(&cgc, ((void*)0), 0, CGC_DATA_NONE);
 cgc.cmd[0] = GPCMD_FLUSH_CACHE;
 cgc.quiet = 1;
 return pkt_generic_packet(pd, &cgc);
}
