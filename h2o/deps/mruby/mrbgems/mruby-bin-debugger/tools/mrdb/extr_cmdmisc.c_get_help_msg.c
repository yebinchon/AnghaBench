
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cmd2; int * cmd1; } ;
typedef TYPE_1__ help_msg ;


 scalar_t__ check_cmd_pattern (int *,char*) ;
 TYPE_1__* help_msg_list ;

__attribute__((used)) static help_msg*
get_help_msg(char *cmd1, char *cmd2)
{
  help_msg *p;

  if (cmd1 == ((void*)0)) {
    return ((void*)0);
  }
  for (p = help_msg_list; p->cmd1 != ((void*)0); p++) {
    if (check_cmd_pattern(p->cmd1, cmd1) && check_cmd_pattern(p->cmd2, cmd2)) {
      return p;
    }
  }
  return ((void*)0);
}
