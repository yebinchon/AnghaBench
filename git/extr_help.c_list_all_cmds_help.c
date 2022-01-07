
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct cmdname_help {char* name; int category; int help; } ;
struct TYPE_2__ {char* string; int util; } ;


 int ALLOC_ARRAY (struct cmdname_help*,int) ;
 struct string_list STRING_LIST_INIT_DUP ;
 char* _ (char*) ;
 int free (struct cmdname_help*) ;
 int get_alias ;
 int git_config (int ,struct string_list*) ;
 int list_all_other_cmds (struct string_list*) ;
 int main_categories ;
 int print_cmd_by_category (int ,int*) ;
 int print_command_list (struct cmdname_help*,int,int) ;
 int printf (char*,char*) ;
 int printf_ln (char*) ;
 int string_list_clear (struct string_list*,int) ;
 int string_list_sort (struct string_list*) ;
 size_t strlen (char*) ;

void list_all_cmds_help(void)
{
 struct string_list others = STRING_LIST_INIT_DUP;
 struct string_list alias_list = STRING_LIST_INIT_DUP;
 struct cmdname_help *aliases;
 int i, longest;

 printf_ln(_("See 'git help <command>' to read about a specific subcommand"));
 print_cmd_by_category(main_categories, &longest);

 list_all_other_cmds(&others);
 if (others.nr)
  printf("\n%s\n", _("External commands"));
 for (i = 0; i < others.nr; i++)
  printf("   %s\n", others.items[i].string);
 string_list_clear(&others, 0);

 git_config(get_alias, &alias_list);
 string_list_sort(&alias_list);

 for (i = 0; i < alias_list.nr; i++) {
  size_t len = strlen(alias_list.items[i].string);
  if (longest < len)
   longest = len;
 }

 if (alias_list.nr) {
  printf("\n%s\n", _("Command aliases"));
  ALLOC_ARRAY(aliases, alias_list.nr + 1);
  for (i = 0; i < alias_list.nr; i++) {
   aliases[i].name = alias_list.items[i].string;
   aliases[i].help = alias_list.items[i].util;
   aliases[i].category = 1;
  }
  aliases[alias_list.nr].name = ((void*)0);
  print_command_list(aliases, 1, longest);
  free(aliases);
 }
 string_list_clear(&alias_list, 1);
}
