
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct loop_device {unsigned int lo_offset; int use_dio; int lo_queue; int lo_flags; int transfer; struct file* lo_backing_file; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {TYPE_2__* a_ops; struct inode* host; } ;
struct TYPE_4__ {scalar_t__ direct_IO; } ;
struct TYPE_3__ {scalar_t__ s_bdev; } ;


 int LO_FLAGS_DIRECT_IO ;
 int QUEUE_FLAG_NOMERGES ;
 unsigned short bdev_logical_block_size (scalar_t__) ;
 int blk_mq_freeze_queue (int ) ;
 int blk_mq_unfreeze_queue (int ) ;
 int blk_queue_flag_clear (int ,int ) ;
 int blk_queue_flag_set (int ,int ) ;
 unsigned short queue_logical_block_size (int ) ;
 int vfs_fsync (struct file*,int ) ;

__attribute__((used)) static void __loop_update_dio(struct loop_device *lo, bool dio)
{
 struct file *file = lo->lo_backing_file;
 struct address_space *mapping = file->f_mapping;
 struct inode *inode = mapping->host;
 unsigned short sb_bsize = 0;
 unsigned dio_align = 0;
 bool use_dio;

 if (inode->i_sb->s_bdev) {
  sb_bsize = bdev_logical_block_size(inode->i_sb->s_bdev);
  dio_align = sb_bsize - 1;
 }
 if (dio) {
  if (queue_logical_block_size(lo->lo_queue) >= sb_bsize &&
    !(lo->lo_offset & dio_align) &&
    mapping->a_ops->direct_IO &&
    !lo->transfer)
   use_dio = 1;
  else
   use_dio = 0;
 } else {
  use_dio = 0;
 }

 if (lo->use_dio == use_dio)
  return;


 vfs_fsync(file, 0);






 blk_mq_freeze_queue(lo->lo_queue);
 lo->use_dio = use_dio;
 if (use_dio) {
  blk_queue_flag_clear(QUEUE_FLAG_NOMERGES, lo->lo_queue);
  lo->lo_flags |= LO_FLAGS_DIRECT_IO;
 } else {
  blk_queue_flag_set(QUEUE_FLAG_NOMERGES, lo->lo_queue);
  lo->lo_flags &= ~LO_FLAGS_DIRECT_IO;
 }
 blk_mq_unfreeze_queue(lo->lo_queue);
}
