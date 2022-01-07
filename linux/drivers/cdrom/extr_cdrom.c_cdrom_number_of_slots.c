
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {scalar_t__ capacity; } ;
struct TYPE_2__ {int nslots; } ;
struct cdrom_changer_info {TYPE_1__ hdr; } ;


 int CD_CHANGER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cd_dbg (int ,char*) ;
 int cdrom_read_mech_status (struct cdrom_device_info*,struct cdrom_changer_info*) ;
 int kfree (struct cdrom_changer_info*) ;
 struct cdrom_changer_info* kmalloc (int,int ) ;

int cdrom_number_of_slots(struct cdrom_device_info *cdi)
{
 int status;
 int nslots = 1;
 struct cdrom_changer_info *info;

 cd_dbg(CD_CHANGER, "entering cdrom_number_of_slots()\n");

 cdi->capacity = 0;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if ((status = cdrom_read_mech_status(cdi, info)) == 0)
  nslots = info->hdr.nslots;

 kfree(info);
 return nslots;
}
