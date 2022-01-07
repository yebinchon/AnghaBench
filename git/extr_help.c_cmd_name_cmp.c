
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdname_help {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmd_name_cmp(const void *elem1, const void *elem2)
{
 const struct cmdname_help *e1 = elem1;
 const struct cmdname_help *e2 = elem2;

 return strcmp(e1->name, e2->name);
}
