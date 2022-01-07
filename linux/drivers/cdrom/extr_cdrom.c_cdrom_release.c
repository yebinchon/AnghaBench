
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_ops {int capability; int (* tray_move ) (struct cdrom_device_info*,int) ;int (* release ) (struct cdrom_device_info*) ;int (* lock_door ) (struct cdrom_device_info*,int ) ;} ;
struct cdrom_device_info {scalar_t__ use_count; int options; scalar_t__ for_data; int keeplocked; int name; struct cdrom_device_ops* ops; } ;
typedef int fmode_t ;


 int CDC_LOCK ;
 int CDC_OPEN_TRAY ;
 int CDC_RAM ;
 int CDO_AUTO_EJECT ;
 int CDO_USE_FFLAGS ;
 scalar_t__ CDROM_CAN (int ) ;
 int CD_CLOSE ;
 int FMODE_NDELAY ;
 int cd_dbg (int ,char*,...) ;
 int cdrom_close_write (struct cdrom_device_info*) ;
 int cdrom_dvd_rw_close_write (struct cdrom_device_info*) ;
 int stub1 (struct cdrom_device_info*,int ) ;
 int stub2 (struct cdrom_device_info*) ;
 int stub3 (struct cdrom_device_info*,int) ;

void cdrom_release(struct cdrom_device_info *cdi, fmode_t mode)
{
 const struct cdrom_device_ops *cdo = cdi->ops;
 int opened_for_data;

 cd_dbg(CD_CLOSE, "entering cdrom_release\n");

 if (cdi->use_count > 0)
  cdi->use_count--;

 if (cdi->use_count == 0) {
  cd_dbg(CD_CLOSE, "Use count for \"/dev/%s\" now zero\n",
         cdi->name);
  cdrom_dvd_rw_close_write(cdi);

  if ((cdo->capability & CDC_LOCK) && !cdi->keeplocked) {
   cd_dbg(CD_CLOSE, "Unlocking door!\n");
   cdo->lock_door(cdi, 0);
  }
 }

 opened_for_data = !(cdi->options & CDO_USE_FFLAGS) ||
  !(mode & FMODE_NDELAY);




 if (CDROM_CAN(CDC_RAM) && !cdi->use_count && cdi->for_data)
  cdrom_close_write(cdi);

 cdo->release(cdi);
 if (cdi->use_count == 0) {
  if (opened_for_data &&
      cdi->options & CDO_AUTO_EJECT && CDROM_CAN(CDC_OPEN_TRAY))
   cdo->tray_move(cdi, 1);
 }
}
