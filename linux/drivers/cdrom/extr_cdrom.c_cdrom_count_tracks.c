
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xa; int cdi; int data; int audio; void* error; } ;
typedef TYPE_2__ tracktype ;
struct cdrom_tochdr {int cdte_format; int cdth_trk0; int cdth_trk1; int cdte_track; int cdte_ctrl; } ;
struct cdrom_tocentry {int cdte_format; int cdth_trk0; int cdth_trk1; int cdte_track; int cdte_ctrl; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* audio_ioctl ) (struct cdrom_device_info*,int ,struct cdrom_tochdr*) ;} ;


 int CDROMREADTOCENTRY ;
 int CDROMREADTOCHDR ;
 int CDROM_DATA_TRACK ;
 int CDROM_MSF ;
 void* CDS_NO_DISC ;
 void* CDS_NO_INFO ;
 int CD_COUNT_TRACKS ;
 int ENOMEDIUM ;
 int cd_dbg (int ,char*,...) ;
 int stub1 (struct cdrom_device_info*,int ,struct cdrom_tochdr*) ;
 int stub2 (struct cdrom_device_info*,int ,struct cdrom_tochdr*) ;

__attribute__((used)) static void cdrom_count_tracks(struct cdrom_device_info *cdi, tracktype *tracks)
{
 struct cdrom_tochdr header;
 struct cdrom_tocentry entry;
 int ret, i;
 tracks->data = 0;
 tracks->audio = 0;
 tracks->cdi = 0;
 tracks->xa = 0;
 tracks->error = 0;
 cd_dbg(CD_COUNT_TRACKS, "entering cdrom_count_tracks\n");

 ret = cdi->ops->audio_ioctl(cdi, CDROMREADTOCHDR, &header);
 if (ret) {
  if (ret == -ENOMEDIUM)
   tracks->error = CDS_NO_DISC;
  else
   tracks->error = CDS_NO_INFO;
  return;
 }

 entry.cdte_format = CDROM_MSF;
 for (i = header.cdth_trk0; i <= header.cdth_trk1; i++) {
  entry.cdte_track = i;
  if (cdi->ops->audio_ioctl(cdi, CDROMREADTOCENTRY, &entry)) {
   tracks->error = CDS_NO_INFO;
   return;
  }
  if (entry.cdte_ctrl & CDROM_DATA_TRACK) {
   if (entry.cdte_format == 0x10)
    tracks->cdi++;
   else if (entry.cdte_format == 0x20)
    tracks->xa++;
   else
    tracks->data++;
  } else {
   tracks->audio++;
  }
  cd_dbg(CD_COUNT_TRACKS, "track %d: format=%d, ctrl=%d\n",
         i, entry.cdte_format, entry.cdte_ctrl);
 }
 cd_dbg(CD_COUNT_TRACKS, "disc has %d tracks: %d=audio %d=data %d=Cd-I %d=XA\n",
        header.cdth_trk1, tracks->audio, tracks->data,
        tracks->cdi, tracks->xa);
}
