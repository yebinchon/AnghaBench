
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; } ;
struct file {int dummy; } ;


 int DEVCOUNT ;
 int MINOR (int ) ;
 int openCnt ;

__attribute__((used)) static int gio_close(struct inode *inode, struct file *filp)
{
 int minor;

 minor = MINOR(inode->i_rdev);
 if (minor < DEVCOUNT) {
  openCnt--;
 }
 return 0;
}
