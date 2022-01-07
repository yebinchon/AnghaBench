
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {scalar_t__ sanyo_slot; } ;
struct cdrom_changer_info {TYPE_1__* slots; } ;
struct TYPE_2__ {scalar_t__ disc_present; } ;


 int CDS_DISC_OK ;
 int CDS_NO_DISC ;
 int CDS_NO_INFO ;
 int CD_CHANGER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cd_dbg (int ,char*) ;
 int cdrom_read_mech_status (struct cdrom_device_info*,struct cdrom_changer_info*) ;
 int kfree (struct cdrom_changer_info*) ;
 struct cdrom_changer_info* kmalloc (int,int ) ;

__attribute__((used)) static int cdrom_slot_status(struct cdrom_device_info *cdi, int slot)
{
 struct cdrom_changer_info *info;
 int ret;

 cd_dbg(CD_CHANGER, "entering cdrom_slot_status()\n");
 if (cdi->sanyo_slot)
  return CDS_NO_INFO;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if ((ret = cdrom_read_mech_status(cdi, info)))
  goto out_free;

 if (info->slots[slot].disc_present)
  ret = CDS_DISC_OK;
 else
  ret = CDS_NO_DISC;

out_free:
 kfree(info);
 return ret;
}
