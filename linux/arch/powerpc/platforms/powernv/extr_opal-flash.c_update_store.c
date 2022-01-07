
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct update_flash_t {int status; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int status; } ;


 int EINVAL ;
 int FLASH_IMG_READY ;
 int FLASH_INVALID_IMG ;
 int FLASH_NO_OP ;
 int FLASH_UPDATE_CANCEL ;
 int FLASH_UPDATE_INIT ;
 int IMAGE_READY ;
 TYPE_1__ image_data ;
 int image_data_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_flash_update (int ) ;
 struct update_flash_t update_flash_data ;

__attribute__((used)) static ssize_t update_store(struct kobject *kobj,
       struct kobj_attribute *attr,
       const char *buf, size_t count)
{
 struct update_flash_t *const args_buf = &update_flash_data;
 int rc = count;

 mutex_lock(&image_data_mutex);

 switch (buf[0]) {
 case '0':
  if (args_buf->status == FLASH_IMG_READY)
   opal_flash_update(FLASH_UPDATE_CANCEL);
  args_buf->status = FLASH_NO_OP;
  break;
 case '1':

  if (image_data.status == IMAGE_READY)
   args_buf->status =
    opal_flash_update(FLASH_UPDATE_INIT);
  else
   args_buf->status = FLASH_INVALID_IMG;
  break;
 default:
  rc = -EINVAL;
 }

 mutex_unlock(&image_data_mutex);
 return rc;
}
