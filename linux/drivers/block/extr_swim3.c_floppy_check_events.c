
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct floppy_state* private_data; } ;
struct floppy_state {scalar_t__ ejected; } ;


 unsigned int DISK_EVENT_MEDIA_CHANGE ;

__attribute__((used)) static unsigned int floppy_check_events(struct gendisk *disk,
     unsigned int clearing)
{
 struct floppy_state *fs = disk->private_data;
 return fs->ejected ? DISK_EVENT_MEDIA_CHANGE : 0;
}
