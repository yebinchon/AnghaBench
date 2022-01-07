
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elog_obj {int id; } ;
struct elog_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t elog_id_show(struct elog_obj *elog_obj,
       struct elog_attribute *attr,
       char *buf)
{
 return sprintf(buf, "0x%llx\n", elog_obj->id);
}
