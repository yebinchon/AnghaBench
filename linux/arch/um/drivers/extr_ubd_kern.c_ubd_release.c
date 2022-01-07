
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubd {scalar_t__ count; } ;
struct gendisk {struct ubd* private_data; } ;
typedef int fmode_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubd_close_dev (struct ubd*) ;
 int ubd_mutex ;

__attribute__((used)) static void ubd_release(struct gendisk *disk, fmode_t mode)
{
 struct ubd *ubd_dev = disk->private_data;

 mutex_lock(&ubd_mutex);
 if(--ubd_dev->count == 0)
  ubd_close_dev(ubd_dev);
 mutex_unlock(&ubd_mutex);
}
