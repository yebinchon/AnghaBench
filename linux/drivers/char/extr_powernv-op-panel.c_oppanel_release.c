
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int mutex_unlock (int *) ;
 int oppanel_mutex ;

__attribute__((used)) static int oppanel_release(struct inode *inode, struct file *filp)
{
 mutex_unlock(&oppanel_mutex);
 return 0;
}
