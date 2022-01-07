
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int mutex_trylock (int *) ;
 int oppanel_mutex ;
 int pr_debug (char*) ;

__attribute__((used)) static int oppanel_open(struct inode *inode, struct file *filp)
{
 if (!mutex_trylock(&oppanel_mutex)) {
  pr_debug("Device Busy\n");
  return -EBUSY;
 }
 return 0;
}
