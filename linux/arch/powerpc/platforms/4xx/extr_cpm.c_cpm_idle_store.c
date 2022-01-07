
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t EINVAL ;
 int cpm_idle_config (int) ;
 TYPE_1__* idle_mode ;
 char* memchr (char const*,char,size_t) ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static ssize_t cpm_idle_store(struct kobject *kobj,
         struct kobj_attribute *attr,
         const char *buf, size_t n)
{
 int i;
 char *p;
 int len;

 p = memchr(buf, '\n', n);
 len = p ? p - buf : n;

 for (i = 0; i < ARRAY_SIZE(idle_mode); i++) {
  if (strncmp(buf, idle_mode[i].name, len) == 0) {
   cpm_idle_config(i);
   return n;
  }
 }

 return -EINVAL;
}
