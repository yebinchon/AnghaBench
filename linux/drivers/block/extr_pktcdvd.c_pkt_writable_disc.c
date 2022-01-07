
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pktcdvd_device {int mmc3_profile; } ;
struct TYPE_3__ {int disc_type; scalar_t__ erasable; scalar_t__ border_status; } ;
typedef TYPE_1__ disc_information ;


 scalar_t__ PACKET_SESSION_RESERVED ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,int) ;
 int pkt_err (struct pktcdvd_device*,char*,...) ;
 int pkt_notice (struct pktcdvd_device*,char*) ;

__attribute__((used)) static int pkt_writable_disc(struct pktcdvd_device *pd, disc_information *di)
{
 switch (pd->mmc3_profile) {
  case 0x0a:
  case 0xffff:
   break;
  case 0x1a:
  case 0x13:
  case 0x12:
   return 1;
  default:
   pkt_dbg(2, pd, "Wrong disc profile (%x)\n",
    pd->mmc3_profile);
   return 0;
 }





 if (di->disc_type == 0xff) {
  pkt_notice(pd, "unknown disc - no track?\n");
  return 0;
 }

 if (di->disc_type != 0x20 && di->disc_type != 0) {
  pkt_err(pd, "wrong disc type (%x)\n", di->disc_type);
  return 0;
 }

 if (di->erasable == 0) {
  pkt_notice(pd, "disc not erasable\n");
  return 0;
 }

 if (di->border_status == PACKET_SESSION_RESERVED) {
  pkt_err(pd, "can't write to last track (reserved)\n");
  return 0;
 }

 return 1;
}
