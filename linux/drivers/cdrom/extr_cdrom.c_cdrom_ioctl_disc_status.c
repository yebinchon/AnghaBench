
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; scalar_t__ audio; scalar_t__ data; scalar_t__ cdi; scalar_t__ xa; } ;
typedef TYPE_1__ tracktype ;
struct cdrom_device_info {int dummy; } ;


 int CDS_AUDIO ;
 int CDS_DATA_1 ;
 int CDS_MIXED ;
 int CDS_NO_INFO ;
 int CDS_XA_2_1 ;
 int CDS_XA_2_2 ;
 int CD_DO_IOCTL ;
 int CD_WARNING ;
 int cd_dbg (int ,char*) ;
 int cdrom_count_tracks (struct cdrom_device_info*,TYPE_1__*) ;

__attribute__((used)) static int cdrom_ioctl_disc_status(struct cdrom_device_info *cdi)
{
 tracktype tracks;

 cd_dbg(CD_DO_IOCTL, "entering CDROM_DISC_STATUS\n");

 cdrom_count_tracks(cdi, &tracks);
 if (tracks.error)
  return tracks.error;


 if (tracks.audio > 0) {
  if (!tracks.data && !tracks.cdi && !tracks.xa)
   return CDS_AUDIO;
  else
   return CDS_MIXED;
 }

 if (tracks.cdi > 0)
  return CDS_XA_2_2;
 if (tracks.xa > 0)
  return CDS_XA_2_1;
 if (tracks.data > 0)
  return CDS_DATA_1;


 cd_dbg(CD_WARNING, "This disc doesn't have any tracks I recognize!\n");
 return CDS_NO_INFO;
}
