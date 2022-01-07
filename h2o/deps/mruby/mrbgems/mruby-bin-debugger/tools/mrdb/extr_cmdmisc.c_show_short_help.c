
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_bool ;
struct TYPE_3__ {char* cmd1; char* cmd2; char* short_msg; } ;
typedef TYPE_1__ help_msg ;


 int TRUE ;
 TYPE_1__* help_msg_list ;
 int printf (char*,...) ;

__attribute__((used)) static mrb_bool
show_short_help(void)
{
  help_msg *p;

  printf("Commands\n");

  for (p = help_msg_list; p->cmd1 != ((void*)0); p++) {
    if (p->cmd2 == ((void*)0)) {
      printf("  %s -- %s\n", p->cmd1, p->short_msg);
    }
    else {
      printf("  %s %s -- %s\n", p->cmd1, p->cmd2, p->short_msg);
    }
  }
  return TRUE;
}
