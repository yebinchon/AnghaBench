
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; } ;
struct file {int dummy; } ;


 int DEVCOUNT ;
 int EALREADY ;
 int ENOENT ;
 int MINOR (int ) ;
 scalar_t__ openCnt ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int gio_open(struct inode *inode, struct file *filp)
{
 int minor;
 int ret = -ENOENT;

 preempt_disable();
 minor = MINOR(inode->i_rdev);
 if (minor < DEVCOUNT) {
  if (openCnt > 0) {
   ret = -EALREADY;
  } else {
   openCnt++;
   ret = 0;
  }
 }
 preempt_enable();
 return ret;
}
