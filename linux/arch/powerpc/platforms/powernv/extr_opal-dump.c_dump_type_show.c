
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_obj {int type; } ;
struct dump_attribute {int dummy; } ;
typedef int ssize_t ;


 char* dump_type_to_string (int) ;
 int sprintf (char*,char*,int,char*) ;

__attribute__((used)) static ssize_t dump_type_show(struct dump_obj *dump_obj,
         struct dump_attribute *attr,
         char *buf)
{

 return sprintf(buf, "0x%x %s\n", dump_obj->type,
         dump_type_to_string(dump_obj->type));
}
