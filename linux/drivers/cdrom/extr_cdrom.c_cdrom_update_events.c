
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {unsigned int vfs_events; unsigned int ioctl_events; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* check_events ) (struct cdrom_device_info*,unsigned int,int ) ;} ;


 int CDSL_CURRENT ;
 unsigned int stub1 (struct cdrom_device_info*,unsigned int,int ) ;

__attribute__((used)) static void cdrom_update_events(struct cdrom_device_info *cdi,
    unsigned int clearing)
{
 unsigned int events;

 events = cdi->ops->check_events(cdi, clearing, CDSL_CURRENT);
 cdi->vfs_events |= events;
 cdi->ioctl_events |= events;
}
