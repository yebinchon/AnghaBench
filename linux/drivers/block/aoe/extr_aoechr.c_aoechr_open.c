
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_3__ {int minor; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int aoechr_mutex ;
 TYPE_1__* chardevs ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
aoechr_open(struct inode *inode, struct file *filp)
{
 int n, i;

 mutex_lock(&aoechr_mutex);
 n = iminor(inode);
 filp->private_data = (void *) (unsigned long) n;

 for (i = 0; i < ARRAY_SIZE(chardevs); ++i)
  if (chardevs[i].minor == n) {
   mutex_unlock(&aoechr_mutex);
   return 0;
  }
 mutex_unlock(&aoechr_mutex);
 return -EINVAL;
}
