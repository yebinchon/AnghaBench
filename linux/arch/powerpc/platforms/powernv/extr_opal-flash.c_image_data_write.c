
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ data; scalar_t__ status; scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FLASH_IMG_READY ;
 int FLASH_UPDATE_CANCEL ;
 scalar_t__ IMAGE_LOADING ;
 scalar_t__ IMAGE_READY ;
 int alloc_image_buf (char*,size_t) ;
 int free_image_buf () ;
 TYPE_2__ image_data ;
 int image_data_mutex ;
 int memcpy (scalar_t__,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_flash_update (int ) ;
 int pr_debug (char*) ;
 TYPE_1__ update_flash_data ;

__attribute__((used)) static ssize_t image_data_write(struct file *filp, struct kobject *kobj,
    struct bin_attribute *bin_attr,
    char *buffer, loff_t pos, size_t count)
{
 int rc;

 mutex_lock(&image_data_mutex);


 if (pos == 0) {

  if (image_data.data)
   free_image_buf();


  if (update_flash_data.status == FLASH_IMG_READY)
   opal_flash_update(FLASH_UPDATE_CANCEL);


  rc = alloc_image_buf(buffer, count);
  if (rc)
   goto out;
 }

 if (image_data.status != IMAGE_LOADING) {
  rc = -ENOMEM;
  goto out;
 }

 if ((pos + count) > image_data.size) {
  rc = -EINVAL;
  goto out;
 }

 memcpy(image_data.data + pos, (void *)buffer, count);
 rc = count;


 if ((pos + count) == image_data.size) {
  pr_debug("FLASH: Candidate image loaded....\n");
  image_data.status = IMAGE_READY;
 }

out:
 mutex_unlock(&image_data_mutex);
 return rc;
}
