
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {scalar_t__ private_data; } ;
struct TYPE_2__ {size_t fd_device; int generation; int flags; scalar_t__ maxtrack; scalar_t__ maxblock; } ;


 int EFAULT ;
 int FD_DISK_CHANGED_BIT ;
 int FD_RAW_NEED_DISK ;
 int FD_VERIFY_BIT ;
 TYPE_1__* UDRS ;
 scalar_t__ WARN (int,char*) ;
 int __floppy_read_block_0 (int ,int) ;
 scalar_t__ atomic_read (int *) ;
 int buffer_drive ;
 int buffer_track ;
 int clear_bit (int,int *) ;
 scalar_t__ drive_no_geom (int) ;
 int fake_change ;
 int * floppy_sizes ;
 int lock_fdc (int) ;
 int * opened_bdev ;
 int poll_drive (int,int ) ;
 int process_fd_request () ;
 int set_capacity (struct gendisk*,int ) ;
 scalar_t__ test_bit (int,int *) ;
 int usage_count ;

__attribute__((used)) static int floppy_revalidate(struct gendisk *disk)
{
 int drive = (long)disk->private_data;
 int cf;
 int res = 0;

 if (test_bit(FD_DISK_CHANGED_BIT, &UDRS->flags) ||
     test_bit(FD_VERIFY_BIT, &UDRS->flags) ||
     test_bit(drive, &fake_change) ||
     drive_no_geom(drive)) {
  if (WARN(atomic_read(&usage_count) == 0,
    "VFS: revalidate called on non-open device.\n"))
   return -EFAULT;

  res = lock_fdc(drive);
  if (res)
   return res;
  cf = (test_bit(FD_DISK_CHANGED_BIT, &UDRS->flags) ||
        test_bit(FD_VERIFY_BIT, &UDRS->flags));
  if (!(cf || test_bit(drive, &fake_change) || drive_no_geom(drive))) {
   process_fd_request();
   return 0;
  }
  UDRS->maxblock = 0;
  UDRS->maxtrack = 0;
  if (buffer_drive == drive)
   buffer_track = -1;
  clear_bit(drive, &fake_change);
  clear_bit(FD_DISK_CHANGED_BIT, &UDRS->flags);
  if (cf)
   UDRS->generation++;
  if (drive_no_geom(drive)) {

   res = __floppy_read_block_0(opened_bdev[drive], drive);
  } else {
   if (cf)
    poll_drive(0, FD_RAW_NEED_DISK);
   process_fd_request();
  }
 }
 set_capacity(disk, floppy_sizes[UDRS->fd_device]);
 return res;
}
