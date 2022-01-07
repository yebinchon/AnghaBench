
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int mask; TYPE_1__* ops; } ;
struct TYPE_2__ {int capability; } ;


 int CD_DO_IOCTL ;
 int cd_dbg (int ,char*) ;

__attribute__((used)) static int cdrom_ioctl_get_capability(struct cdrom_device_info *cdi)
{
 cd_dbg(CD_DO_IOCTL, "entering CDROM_GET_CAPABILITY\n");
 return (cdi->ops->capability & ~cdi->mask);
}
