
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int fmode_t ;


 int current_device ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int z2ram_mutex ;

__attribute__((used)) static void
z2_release(struct gendisk *disk, fmode_t mode)
{
    mutex_lock(&z2ram_mutex);
    if ( current_device == -1 ) {
     mutex_unlock(&z2ram_mutex);
     return;
    }
    mutex_unlock(&z2ram_mutex);



}
