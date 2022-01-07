
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elog_obj {int type; } ;
struct elog_attribute {int dummy; } ;
typedef int ssize_t ;


 int elog_type_to_string (int ) ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static ssize_t elog_type_show(struct elog_obj *elog_obj,
         struct elog_attribute *attr,
         char *buf)
{
 return sprintf(buf, "0x%llx %s\n",
         elog_obj->type,
         elog_type_to_string(elog_obj->type));
}
