
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_obj {int id; } ;
struct dump_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dump_id_show(struct dump_obj *dump_obj,
       struct dump_attribute *attr,
       char *buf)
{
 return sprintf(buf, "0x%x\n", dump_obj->id);
}
