
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {char* name; scalar_t__ enabled; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* idle_mode ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t cpm_idle_show(struct kobject *kobj,
        struct kobj_attribute *attr, char *buf)
{
 char *s = buf;
 int i;

 for (i = 0; i < ARRAY_SIZE(idle_mode); i++) {
  if (idle_mode[i].enabled)
   s += sprintf(s, "[%s] ", idle_mode[i].name);
  else
   s += sprintf(s, "%s ", idle_mode[i].name);
 }

 *(s-1) = '\n';

 return s - buf;
}
