
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {struct amiga_floppy_struct* private_data; } ;
struct amiga_floppy_struct {int track; scalar_t__ dirty; } ;
struct TYPE_2__ {int pra; } ;


 int DISK_EVENT_MEDIA_CHANGE ;
 int DSKCHANGE ;
 TYPE_1__ ciaa ;
 int fd_deselect (int) ;
 int fd_probe (int) ;
 int fd_select (int) ;
 int get_fdc (int) ;
 int rel_fdc () ;
 struct amiga_floppy_struct* unit ;
 scalar_t__ writefromint ;
 scalar_t__ writepending ;

__attribute__((used)) static unsigned amiga_check_events(struct gendisk *disk, unsigned int clearing)
{
 struct amiga_floppy_struct *p = disk->private_data;
 int drive = p - unit;
 int changed;
 static int first_time = 1;

 if (first_time)
  changed = first_time--;
 else {
  get_fdc(drive);
  fd_select (drive);
  changed = !(ciaa.pra & DSKCHANGE);
  fd_deselect (drive);
  rel_fdc();
 }

 if (changed) {
  fd_probe(drive);
  p->track = -1;
  p->dirty = 0;
  writepending = 0;
  writefromint = 0;
  return DISK_EVENT_MEDIA_CHANGE;
 }
 return 0;
}
