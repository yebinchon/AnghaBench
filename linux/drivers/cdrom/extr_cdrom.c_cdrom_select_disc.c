
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cdrom_device_info {int mc_flags; int use_count; scalar_t__ keeplocked; TYPE_1__* ops; } ;
struct TYPE_4__ {int curslot; } ;
struct cdrom_changer_info {TYPE_2__ hdr; } ;
struct TYPE_3__ {int (* media_changed ) (struct cdrom_device_info*,int) ;int (* check_events ) (struct cdrom_device_info*,int ,int) ;} ;


 int CDC_SELECT_DISC ;
 int CDROM_CAN (int ) ;
 int CDSL_CURRENT ;
 int CDSL_NONE ;
 int CD_CHANGER ;
 int EBUSY ;
 int EDRIVE_CANT_DO_THIS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cd_dbg (int ,char*) ;
 int cdrom_load_unload (struct cdrom_device_info*,int) ;
 int cdrom_read_mech_status (struct cdrom_device_info*,struct cdrom_changer_info*) ;
 int kfree (struct cdrom_changer_info*) ;
 struct cdrom_changer_info* kmalloc (int,int ) ;
 int stub1 (struct cdrom_device_info*,int ,int) ;
 int stub2 (struct cdrom_device_info*,int) ;

__attribute__((used)) static int cdrom_select_disc(struct cdrom_device_info *cdi, int slot)
{
 struct cdrom_changer_info *info;
 int curslot;
 int ret;

 cd_dbg(CD_CHANGER, "entering cdrom_select_disc()\n");
 if (!CDROM_CAN(CDC_SELECT_DISC))
  return -EDRIVE_CANT_DO_THIS;

 if (cdi->ops->check_events)
  cdi->ops->check_events(cdi, 0, slot);
 else
  cdi->ops->media_changed(cdi, slot);

 if (slot == CDSL_NONE) {

  cdi->mc_flags = 0x3;
  return cdrom_load_unload(cdi, -1);
 }

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if ((ret = cdrom_read_mech_status(cdi, info))) {
  kfree(info);
  return ret;
 }

 curslot = info->hdr.curslot;
 kfree(info);

 if (cdi->use_count > 1 || cdi->keeplocked) {
  if (slot == CDSL_CURRENT) {
       return curslot;
  } else {
   return -EBUSY;
  }
 }






 if (slot == CDSL_CURRENT)
  slot = curslot;


 cdi->mc_flags = 0x3;
 if ((ret = cdrom_load_unload(cdi, slot)))
  return ret;

 return slot;
}
