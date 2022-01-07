
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* audio_ioctl ) (struct cdrom_device_info*,unsigned int,int *) ;} ;


 int CDC_PLAY_AUDIO ;
 int CDROM_CAN (int ) ;
 int CD_DO_IOCTL ;
 int ENOSYS ;
 int cd_dbg (int ,char*) ;
 int check_for_audio_disc (struct cdrom_device_info*,TYPE_1__*) ;
 int stub1 (struct cdrom_device_info*,unsigned int,int *) ;

__attribute__((used)) static int cdrom_ioctl_audioctl(struct cdrom_device_info *cdi,
  unsigned int cmd)
{
 int ret;

 cd_dbg(CD_DO_IOCTL, "doing audio ioctl (start/stop/pause/resume)\n");

 if (!CDROM_CAN(CDC_PLAY_AUDIO))
  return -ENOSYS;
 ret = check_for_audio_disc(cdi, cdi->ops);
 if (ret)
  return ret;
 return cdi->ops->audio_ioctl(cdi, cmd, ((void*)0));
}
