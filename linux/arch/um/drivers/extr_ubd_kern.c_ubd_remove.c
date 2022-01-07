
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubd {scalar_t__ count; int pdev; int * file; } ;
struct gendisk {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int del_gendisk (struct gendisk*) ;
 struct gendisk** fake_gendisk ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_device_unregister (int *) ;
 int put_disk (struct gendisk*) ;
 struct ubd* ubd_devs ;
 struct gendisk** ubd_gendisk ;
 int ubd_lock ;

__attribute__((used)) static int ubd_remove(int n, char **error_out)
{
 struct gendisk *disk = ubd_gendisk[n];
 struct ubd *ubd_dev;
 int err = -ENODEV;

 mutex_lock(&ubd_lock);

 ubd_dev = &ubd_devs[n];

 if(ubd_dev->file == ((void*)0))
  goto out;


 err = -EBUSY;
 if(ubd_dev->count > 0)
  goto out;

 ubd_gendisk[n] = ((void*)0);
 if(disk != ((void*)0)){
  del_gendisk(disk);
  put_disk(disk);
 }

 if(fake_gendisk[n] != ((void*)0)){
  del_gendisk(fake_gendisk[n]);
  put_disk(fake_gendisk[n]);
  fake_gendisk[n] = ((void*)0);
 }

 err = 0;
 platform_device_unregister(&ubd_dev->pdev);
out:
 mutex_unlock(&ubd_lock);
 return err;
}
