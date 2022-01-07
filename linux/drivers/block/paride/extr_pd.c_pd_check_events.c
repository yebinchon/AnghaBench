
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int changed; int removable; } ;
struct gendisk {struct pd_unit* private_data; } ;


 unsigned int DISK_EVENT_MEDIA_CHANGE ;
 int pd_media_check ;
 int pd_special_command (struct pd_unit*,int ) ;

__attribute__((used)) static unsigned int pd_check_events(struct gendisk *p, unsigned int clearing)
{
 struct pd_unit *disk = p->private_data;
 int r;
 if (!disk->removable)
  return 0;
 pd_special_command(disk, pd_media_check);
 r = disk->changed;
 disk->changed = 0;
 return r ? DISK_EVENT_MEDIA_CHANGE : 0;
}
