
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {scalar_t__ cnt; } ;


 int _ (char*) ;
 char* git_exec_path () ;
 int pretty_print_cmdnames (struct cmdnames*,unsigned int) ;
 int printf_ln (int ,...) ;
 int putchar (char) ;

void list_commands(unsigned int colopts,
     struct cmdnames *main_cmds, struct cmdnames *other_cmds)
{
 if (main_cmds->cnt) {
  const char *exec_path = git_exec_path();
  printf_ln(_("available git commands in '%s'"), exec_path);
  putchar('\n');
  pretty_print_cmdnames(main_cmds, colopts);
  putchar('\n');
 }

 if (other_cmds->cnt) {
  printf_ln(_("git commands available from elsewhere on your $PATH"));
  putchar('\n');
  pretty_print_cmdnames(other_cmds, colopts);
  putchar('\n');
 }
}
