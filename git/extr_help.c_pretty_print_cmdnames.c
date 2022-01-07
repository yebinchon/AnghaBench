
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct column_options {char* indent; int padding; } ;
struct cmdnames {int cnt; TYPE_1__** names; } ;
typedef int copts ;
struct TYPE_2__ {int name; } ;


 unsigned int COL_ENABLED ;
 unsigned int COL_ENABLE_MASK ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int memset (struct column_options*,int ,int) ;
 int print_columns (struct string_list*,unsigned int,struct column_options*) ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;

__attribute__((used)) static void pretty_print_cmdnames(struct cmdnames *cmds, unsigned int colopts)
{
 struct string_list list = STRING_LIST_INIT_NODUP;
 struct column_options copts;
 int i;

 for (i = 0; i < cmds->cnt; i++)
  string_list_append(&list, cmds->names[i]->name);




 colopts = (colopts & ~COL_ENABLE_MASK) | COL_ENABLED;
 memset(&copts, 0, sizeof(copts));
 copts.indent = "  ";
 copts.padding = 2;
 print_columns(&list, colopts, &copts);
 string_list_clear(&list, 0);
}
