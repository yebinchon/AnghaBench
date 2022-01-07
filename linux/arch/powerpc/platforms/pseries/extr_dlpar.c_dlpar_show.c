
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t dlpar_show(struct class *class, struct class_attribute *attr,
     char *buf)
{
 return sprintf(buf, "%s\n", "memory,cpu");
}
