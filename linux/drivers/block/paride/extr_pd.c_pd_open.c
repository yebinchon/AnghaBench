
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_unit {scalar_t__ removable; int access; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct pd_unit* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pd_door_lock ;
 int pd_media_check ;
 int pd_mutex ;
 int pd_special_command (struct pd_unit*,int ) ;

__attribute__((used)) static int pd_open(struct block_device *bdev, fmode_t mode)
{
 struct pd_unit *disk = bdev->bd_disk->private_data;

 mutex_lock(&pd_mutex);
 disk->access++;

 if (disk->removable) {
  pd_special_command(disk, pd_media_check);
  pd_special_command(disk, pd_door_lock);
 }
 mutex_unlock(&pd_mutex);
 return 0;
}
