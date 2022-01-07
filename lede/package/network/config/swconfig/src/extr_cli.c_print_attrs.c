
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_attr {int type; char* name; char* description; struct switch_attr* next; } ;






 int printf (char*,int,char const*,char*,char*) ;

__attribute__((used)) static void
print_attrs(const struct switch_attr *attr)
{
 int i = 0;
 while (attr) {
  const char *type;
  switch(attr->type) {
   case 131:
    type = "int";
    break;
   case 128:
    type = "string";
    break;
   case 129:
    type = "ports";
    break;
   case 130:
    type = "none";
    break;
   default:
    type = "unknown";
    break;
  }
  printf("\tAttribute %d (%s): %s (%s)\n", ++i, type, attr->name, attr->description);
  attr = attr->next;
 }
}
