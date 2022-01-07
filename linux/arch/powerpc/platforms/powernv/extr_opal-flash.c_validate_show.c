
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct validate_flash_t {scalar_t__ status; int result; int buf_size; int buf; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int FLASH_NO_OP ;
 int VALIDATE_BUF_SIZE ;
 scalar_t__ VALIDATE_CUR_UNKNOWN ;
 scalar_t__ VALIDATE_TMP_UPDATE ;
 int memcpy (char*,int ,int) ;
 int sprintf (char*,char*,int) ;
 struct validate_flash_t validate_flash_data ;

__attribute__((used)) static ssize_t validate_show(struct kobject *kobj,
        struct kobj_attribute *attr, char *buf)
{
 struct validate_flash_t *args_buf = &validate_flash_data;
 int len;


 if (args_buf->status < VALIDATE_TMP_UPDATE) {
  len = sprintf(buf, "%d\n", args_buf->status);
  goto out;
 }


 len = sprintf(buf, "%d\n", args_buf->result);


 if ((args_buf->result != VALIDATE_TMP_UPDATE) &&
     (args_buf->result < VALIDATE_CUR_UNKNOWN))
  goto out;

 if (args_buf->buf_size > (VALIDATE_BUF_SIZE - len)) {
  memcpy(buf + len, args_buf->buf, VALIDATE_BUF_SIZE - len);
  len = VALIDATE_BUF_SIZE;
 } else {
  memcpy(buf + len, args_buf->buf, args_buf->buf_size);
  len += args_buf->buf_size;
 }
out:

 args_buf->status = FLASH_NO_OP;
 return len;
}
