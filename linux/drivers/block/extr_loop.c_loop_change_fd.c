
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_state; int lo_flags; int old_gfp_mask; int lo_queue; struct file* lo_backing_file; } ;
struct file {int f_mapping; } ;
struct block_device {int dummy; } ;


 int EBADF ;
 int EINVAL ;
 int ENXIO ;
 int LO_FLAGS_PARTSCAN ;
 int LO_FLAGS_READ_ONLY ;
 scalar_t__ Lo_bound ;
 int __GFP_FS ;
 int __GFP_IO ;
 int blk_mq_freeze_queue (int ) ;
 int blk_mq_unfreeze_queue (int ) ;
 struct file* fget (unsigned int) ;
 int fput (struct file*) ;
 scalar_t__ get_loop_size (struct loop_device*,struct file*) ;
 int loop_ctl_mutex ;
 int loop_reread_partitions (struct loop_device*,struct block_device*) ;
 int loop_update_dio (struct loop_device*) ;
 int loop_validate_file (struct file*,struct block_device*) ;
 int mapping_gfp_mask (int ) ;
 int mapping_set_gfp_mask (int ,int) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int loop_change_fd(struct loop_device *lo, struct block_device *bdev,
     unsigned int arg)
{
 struct file *file = ((void*)0), *old_file;
 int error;
 bool partscan;

 error = mutex_lock_killable(&loop_ctl_mutex);
 if (error)
  return error;
 error = -ENXIO;
 if (lo->lo_state != Lo_bound)
  goto out_err;


 error = -EINVAL;
 if (!(lo->lo_flags & LO_FLAGS_READ_ONLY))
  goto out_err;

 error = -EBADF;
 file = fget(arg);
 if (!file)
  goto out_err;

 error = loop_validate_file(file, bdev);
 if (error)
  goto out_err;

 old_file = lo->lo_backing_file;

 error = -EINVAL;


 if (get_loop_size(lo, file) != get_loop_size(lo, old_file))
  goto out_err;


 blk_mq_freeze_queue(lo->lo_queue);
 mapping_set_gfp_mask(old_file->f_mapping, lo->old_gfp_mask);
 lo->lo_backing_file = file;
 lo->old_gfp_mask = mapping_gfp_mask(file->f_mapping);
 mapping_set_gfp_mask(file->f_mapping,
        lo->old_gfp_mask & ~(__GFP_IO|__GFP_FS));
 loop_update_dio(lo);
 blk_mq_unfreeze_queue(lo->lo_queue);
 partscan = lo->lo_flags & LO_FLAGS_PARTSCAN;
 mutex_unlock(&loop_ctl_mutex);





 fput(old_file);
 if (partscan)
  loop_reread_partitions(lo, bdev);
 return 0;

out_err:
 mutex_unlock(&loop_ctl_mutex);
 if (file)
  fput(file);
 return error;
}
