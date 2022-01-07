
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct loop_device {struct request_queue* lo_queue; struct file* lo_backing_file; } ;
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {struct block_device* s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;


 int QUEUE_FLAG_NONROT ;
 int bdev_get_queue (struct block_device*) ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_queue_nonrot (int ) ;

__attribute__((used)) static void loop_update_rotational(struct loop_device *lo)
{
 struct file *file = lo->lo_backing_file;
 struct inode *file_inode = file->f_mapping->host;
 struct block_device *file_bdev = file_inode->i_sb->s_bdev;
 struct request_queue *q = lo->lo_queue;
 bool nonrot = 1;


 if (file_bdev)
  nonrot = blk_queue_nonrot(bdev_get_queue(file_bdev));

 if (nonrot)
  blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
 else
  blk_queue_flag_clear(QUEUE_FLAG_NONROT, q);
}
