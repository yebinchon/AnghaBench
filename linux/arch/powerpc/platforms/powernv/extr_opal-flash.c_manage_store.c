
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int FLASH_COMMIT_TMP_SIDE ;
 int FLASH_REJECT_TMP_SIDE ;
 int opal_flash_manage (int ) ;

__attribute__((used)) static ssize_t manage_store(struct kobject *kobj,
       struct kobj_attribute *attr,
       const char *buf, size_t count)
{
 uint8_t op;
 switch (buf[0]) {
 case '0':
  op = FLASH_REJECT_TMP_SIDE;
  break;
 case '1':
  op = FLASH_COMMIT_TMP_SIDE;
  break;
 default:
  return -EINVAL;
 }


 opal_flash_manage(op);
 return count;
}
