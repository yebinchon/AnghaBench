
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int * media_changed; } ;


 int CDC_MEDIA_CHANGED ;
 int CDROM_CAN (int ) ;
 int media_changed (struct cdrom_device_info*,int ) ;

int cdrom_media_changed(struct cdrom_device_info *cdi)
{



 if (cdi == ((void*)0) || cdi->ops->media_changed == ((void*)0))
  return 0;
 if (!CDROM_CAN(CDC_MEDIA_CHANGED))
  return 0;
 return media_changed(cdi, 0);
}
