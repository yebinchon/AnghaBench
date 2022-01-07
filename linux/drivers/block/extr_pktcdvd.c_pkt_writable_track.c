
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rt; int blank; int packet; int fp; } ;
typedef TYPE_1__ track_information ;
struct pktcdvd_device {int mmc3_profile; } ;


 int pkt_err (struct pktcdvd_device*,char*,int,int,int ) ;

__attribute__((used)) static int pkt_writable_track(struct pktcdvd_device *pd, track_information *ti)
{
 switch (pd->mmc3_profile) {
  case 0x1a:
  case 0x12:

   return 1;
  default:
   break;
 }

 if (!ti->packet || !ti->fp)
  return 0;




 if (ti->rt == 0 && ti->blank == 0)
  return 1;

 if (ti->rt == 0 && ti->blank == 1)
  return 1;

 if (ti->rt == 1 && ti->blank == 0)
  return 1;

 pkt_err(pd, "bad state %d-%d-%d\n", ti->rt, ti->blank, ti->packet);
 return 0;
}
