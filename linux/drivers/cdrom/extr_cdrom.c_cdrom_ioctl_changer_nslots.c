
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int capacity; } ;


 int CD_DO_IOCTL ;
 int cd_dbg (int ,char*) ;

__attribute__((used)) static int cdrom_ioctl_changer_nslots(struct cdrom_device_info *cdi)
{
 cd_dbg(CD_DO_IOCTL, "entering CDROM_CHANGER_NSLOTS\n");
 return cdi->capacity;
}
