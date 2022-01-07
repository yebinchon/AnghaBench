
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct loop_device {scalar_t__ lo_encrypt_key_size; struct file* lo_backing_file; } ;
struct file {TYPE_1__* f_op; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* fallocate ) (struct file*,int,int ,int ) ;} ;


 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int blk_rq_bytes (struct request*) ;
 int stub1 (struct file*,int,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lo_discard(struct loop_device *lo, struct request *rq, loff_t pos)
{






 struct file *file = lo->lo_backing_file;
 int mode = FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE;
 int ret;

 if ((!file->f_op->fallocate) || lo->lo_encrypt_key_size) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 ret = file->f_op->fallocate(file, mode, pos, blk_rq_bytes(rq));
 if (unlikely(ret && ret != -EINVAL && ret != -EOPNOTSUPP))
  ret = -EIO;
 out:
 return ret;
}
