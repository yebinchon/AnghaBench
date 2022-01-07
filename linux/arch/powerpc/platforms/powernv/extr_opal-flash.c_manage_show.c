
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manage_flash_t {int status; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int FLASH_NO_OP ;
 struct manage_flash_t manage_flash_data ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t manage_show(struct kobject *kobj,
      struct kobj_attribute *attr, char *buf)
{
 struct manage_flash_t *const args_buf = &manage_flash_data;
 int rc;

 rc = sprintf(buf, "%d\n", args_buf->status);

 args_buf->status = FLASH_NO_OP;
 return rc;
}
