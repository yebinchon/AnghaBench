
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_obj {int dummy; } ;
struct dump_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t init_dump_show(struct dump_obj *dump_obj,
         struct dump_attribute *attr,
         char *buf)
{
 return sprintf(buf, "1 - initiate Service Processor(FSP) dump\n");
}
