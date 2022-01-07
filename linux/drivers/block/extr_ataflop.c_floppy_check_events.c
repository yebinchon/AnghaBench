
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {struct atari_floppy_struct* private_data; } ;
struct atari_floppy_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ wpstat; } ;


 unsigned int DISK_EVENT_MEDIA_CHANGE ;
 TYPE_1__ UD ;
 int changed_floppies ;
 int fake_change ;
 scalar_t__ test_bit (unsigned int,int *) ;
 struct atari_floppy_struct* unit ;

__attribute__((used)) static unsigned int floppy_check_events(struct gendisk *disk,
     unsigned int clearing)
{
 struct atari_floppy_struct *p = disk->private_data;
 unsigned int drive = p - unit;
 if (test_bit (drive, &fake_change)) {

  return DISK_EVENT_MEDIA_CHANGE;
 }
 if (test_bit (drive, &changed_floppies)) {

  return DISK_EVENT_MEDIA_CHANGE;
 }
 if (UD.wpstat) {



  return DISK_EVENT_MEDIA_CHANGE;
 }

 return 0;
}
