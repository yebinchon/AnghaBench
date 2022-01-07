
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elog_obj {int dummy; } ;
struct elog_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t elog_ack_show(struct elog_obj *elog_obj,
        struct elog_attribute *attr,
        char *buf)
{
 return sprintf(buf, "ack - acknowledge log message\n");
}
