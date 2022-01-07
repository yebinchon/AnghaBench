
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct file {int * f_op; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_RDONLY ;
 int PTR_ERR (struct file*) ;
 int current_cred () ;
 struct file* dentry_open (struct path*,int ,int ) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int ) ;
 int put_unused_fd (int) ;
 int spufs_context_fops ;

__attribute__((used)) static int spufs_context_open(struct path *path)
{
 int ret;
 struct file *filp;

 ret = get_unused_fd_flags(0);
 if (ret < 0)
  return ret;

 filp = dentry_open(path, O_RDONLY, current_cred());
 if (IS_ERR(filp)) {
  put_unused_fd(ret);
  return PTR_ERR(filp);
 }

 filp->f_op = &spufs_context_fops;
 fd_install(ret, filp);
 return ret;
}
