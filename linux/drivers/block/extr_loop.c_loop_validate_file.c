
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct loop_device {scalar_t__ lo_state; struct file* lo_backing_file; } ;
struct inode {int i_mode; struct block_device* i_bdev; } ;
struct file {TYPE_2__* f_mapping; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {struct loop_device* private_data; } ;


 int EBADF ;
 int EINVAL ;
 scalar_t__ Lo_bound ;
 int S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ is_loop_device (struct file*) ;

__attribute__((used)) static int loop_validate_file(struct file *file, struct block_device *bdev)
{
 struct inode *inode = file->f_mapping->host;
 struct file *f = file;


 while (is_loop_device(f)) {
  struct loop_device *l;

  if (f->f_mapping->host->i_bdev == bdev)
   return -EBADF;

  l = f->f_mapping->host->i_bdev->bd_disk->private_data;
  if (l->lo_state != Lo_bound) {
   return -EINVAL;
  }
  f = l->lo_backing_file;
 }
 if (!S_ISREG(inode->i_mode) && !S_ISBLK(inode->i_mode))
  return -EINVAL;
 return 0;
}
