
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct cmdnames {int cnt; TYPE_1__** names; } ;
typedef int other_cmds ;
typedef int main_cmds ;
struct TYPE_2__ {int name; } ;


 int clean_cmdnames (struct cmdnames*) ;
 int load_command_list (char*,struct cmdnames*,struct cmdnames*) ;
 int memset (struct cmdnames*,int ,int) ;
 int string_list_append (struct string_list*,int ) ;

void list_all_main_cmds(struct string_list *list)
{
 struct cmdnames main_cmds, other_cmds;
 int i;

 memset(&main_cmds, 0, sizeof(main_cmds));
 memset(&other_cmds, 0, sizeof(other_cmds));
 load_command_list("git-", &main_cmds, &other_cmds);

 for (i = 0; i < main_cmds.cnt; i++)
  string_list_append(list, main_cmds.names[i]->name);

 clean_cmdnames(&main_cmds);
 clean_cmdnames(&other_cmds);
}
