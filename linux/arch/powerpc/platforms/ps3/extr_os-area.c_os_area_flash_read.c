
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int (* read ) (void*,size_t,int ) ;} ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int os_area_flash_mutex ;
 TYPE_1__* os_area_flash_ops ;
 int stub1 (void*,size_t,int ) ;

__attribute__((used)) static ssize_t os_area_flash_read(void *buf, size_t count, loff_t pos)
{
 ssize_t res = -ENODEV;

 mutex_lock(&os_area_flash_mutex);
 if (os_area_flash_ops)
  res = os_area_flash_ops->read(buf, count, pos);
 mutex_unlock(&os_area_flash_mutex);

 return res;
}
