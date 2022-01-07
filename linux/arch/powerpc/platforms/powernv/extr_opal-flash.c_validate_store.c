
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct validate_flash_t {scalar_t__ buf_size; int status; int buf; int result; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ size; int data; } ;


 size_t EINVAL ;
 scalar_t__ IMAGE_READY ;
 scalar_t__ VALIDATE_BUF_SIZE ;
 int VALIDATE_IMG_INCOMPLETE ;
 int VALIDATE_IMG_READY ;
 int VALIDATE_INVALID_IMG ;
 TYPE_1__ image_data ;
 int image_data_mutex ;
 int memcpy (int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_flash_validate () ;
 struct validate_flash_t validate_flash_data ;

__attribute__((used)) static ssize_t validate_store(struct kobject *kobj,
         struct kobj_attribute *attr,
         const char *buf, size_t count)
{
 struct validate_flash_t *args_buf = &validate_flash_data;

 if (buf[0] != '1')
  return -EINVAL;

 mutex_lock(&image_data_mutex);

 if (image_data.status != IMAGE_READY ||
     image_data.size < VALIDATE_BUF_SIZE) {
  args_buf->result = VALIDATE_INVALID_IMG;
  args_buf->status = VALIDATE_IMG_INCOMPLETE;
  goto out;
 }


 memcpy(args_buf->buf, image_data.data, VALIDATE_BUF_SIZE);

 args_buf->status = VALIDATE_IMG_READY;
 args_buf->buf_size = VALIDATE_BUF_SIZE;


 opal_flash_validate();

out:
 mutex_unlock(&image_data_mutex);
 return count;
}
