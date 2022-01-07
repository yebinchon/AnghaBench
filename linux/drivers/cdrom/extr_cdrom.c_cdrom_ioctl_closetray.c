
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tray_move ) (struct cdrom_device_info*,int ) ;} ;


 int CDC_CLOSE_TRAY ;
 int CDROM_CAN (int ) ;
 int CD_DO_IOCTL ;
 int ENOSYS ;
 int cd_dbg (int ,char*) ;
 int stub1 (struct cdrom_device_info*,int ) ;

__attribute__((used)) static int cdrom_ioctl_closetray(struct cdrom_device_info *cdi)
{
 cd_dbg(CD_DO_IOCTL, "entering CDROMCLOSETRAY\n");

 if (!CDROM_CAN(CDC_CLOSE_TRAY))
  return -ENOSYS;
 return cdi->ops->tray_move(cdi, 0);
}
