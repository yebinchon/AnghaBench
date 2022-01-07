
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct drbd_device* private_data; } ;
struct drbd_device {int open_cnt; } ;
typedef int fmode_t ;


 int drbd_main_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drbd_release(struct gendisk *gd, fmode_t mode)
{
 struct drbd_device *device = gd->private_data;
 mutex_lock(&drbd_main_mutex);
 device->open_cnt--;
 mutex_unlock(&drbd_main_mutex);
}
