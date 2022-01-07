
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {unsigned int vfs_events; } ;


 int cdrom_update_events (struct cdrom_device_info*,unsigned int) ;

unsigned int cdrom_check_events(struct cdrom_device_info *cdi,
    unsigned int clearing)
{
 unsigned int events;

 cdrom_update_events(cdi, clearing);
 events = cdi->vfs_events;
 cdi->vfs_events = 0;
 return events;
}
