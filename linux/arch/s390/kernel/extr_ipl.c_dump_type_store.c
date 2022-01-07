
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int DUMP_CCW_STR ;
 int DUMP_FCP_STR ;
 int DUMP_NONE_STR ;
 int DUMP_TYPE_CCW ;
 int DUMP_TYPE_FCP ;
 int DUMP_TYPE_NONE ;
 int EINVAL ;
 int dump_set_type (int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static ssize_t dump_type_store(struct kobject *kobj,
          struct kobj_attribute *attr,
          const char *buf, size_t len)
{
 int rc = -EINVAL;

 if (strncmp(buf, DUMP_NONE_STR, strlen(DUMP_NONE_STR)) == 0)
  rc = dump_set_type(DUMP_TYPE_NONE);
 else if (strncmp(buf, DUMP_CCW_STR, strlen(DUMP_CCW_STR)) == 0)
  rc = dump_set_type(DUMP_TYPE_CCW);
 else if (strncmp(buf, DUMP_FCP_STR, strlen(DUMP_FCP_STR)) == 0)
  rc = dump_set_type(DUMP_TYPE_FCP);
 return (rc != 0) ? rc : len;
}
