
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct loop_device {struct file* lo_backing_file; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ unlikely (int) ;
 int vfs_fsync (struct file*,int ) ;

__attribute__((used)) static int lo_req_flush(struct loop_device *lo, struct request *rq)
{
 struct file *file = lo->lo_backing_file;
 int ret = vfs_fsync(file, 0);
 if (unlikely(ret && ret != -EINVAL))
  ret = -EIO;

 return ret;
}
