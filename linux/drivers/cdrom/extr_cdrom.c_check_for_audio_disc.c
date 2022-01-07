
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; scalar_t__ audio; } ;
typedef TYPE_1__ tracktype ;
struct cdrom_device_ops {int (* drive_status ) (struct cdrom_device_info*,int ) ;int (* tray_move ) (struct cdrom_device_info*,int ) ;} ;
struct cdrom_device_info {int options; } ;


 int CDC_CLOSE_TRAY ;
 int CDO_AUTO_CLOSE ;
 int CDO_CHECK_TYPE ;
 scalar_t__ CDROM_CAN (int ) ;
 int CDSL_CURRENT ;
 int CDS_DISC_OK ;
 int CDS_NO_DISC ;
 int CDS_TRAY_OPEN ;
 int CD_OPEN ;
 int EIO ;
 int EMEDIUMTYPE ;
 int ENOMEDIUM ;
 int cd_dbg (int ,char*,...) ;
 int cdrom_count_tracks (struct cdrom_device_info*,TYPE_1__*) ;
 int stub1 (struct cdrom_device_info*,int ) ;
 int stub2 (struct cdrom_device_info*,int ) ;
 int stub3 (struct cdrom_device_info*,int ) ;

__attribute__((used)) static int check_for_audio_disc(struct cdrom_device_info *cdi,
    const struct cdrom_device_ops *cdo)
{
        int ret;
 tracktype tracks;
 cd_dbg(CD_OPEN, "entering check_for_audio_disc\n");
 if (!(cdi->options & CDO_CHECK_TYPE))
  return 0;
 if (cdo->drive_status != ((void*)0)) {
  ret = cdo->drive_status(cdi, CDSL_CURRENT);
  cd_dbg(CD_OPEN, "drive_status=%d\n", ret);
  if (ret == CDS_TRAY_OPEN) {
   cd_dbg(CD_OPEN, "the tray is open...\n");

   if (CDROM_CAN(CDC_CLOSE_TRAY) &&
       cdi->options & CDO_AUTO_CLOSE) {
    cd_dbg(CD_OPEN, "trying to close the tray\n");
    ret=cdo->tray_move(cdi,0);
    if (ret) {
     cd_dbg(CD_OPEN, "bummer. tried to close tray but failed.\n");





     return -ENOMEDIUM;
    }
   } else {
    cd_dbg(CD_OPEN, "bummer. this driver can't close the tray.\n");
    return -ENOMEDIUM;
   }

   ret = cdo->drive_status(cdi, CDSL_CURRENT);
   if ((ret == CDS_NO_DISC) || (ret==CDS_TRAY_OPEN)) {
    cd_dbg(CD_OPEN, "bummer. the tray is still not closed.\n");
    return -ENOMEDIUM;
   }
   if (ret!=CDS_DISC_OK) {
    cd_dbg(CD_OPEN, "bummer. disc isn't ready.\n");
    return -EIO;
   }
   cd_dbg(CD_OPEN, "the tray is now closed\n");
  }
 }
 cdrom_count_tracks(cdi, &tracks);
 if (tracks.error)
  return(tracks.error);

 if (tracks.audio==0)
  return -EMEDIUMTYPE;

 return 0;
}
