
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {scalar_t__ out; scalar_t__ err; } ;


 int BUG (char*) ;
 int finish_command (struct child_process*) ;
 int start_command (struct child_process*) ;

int run_command(struct child_process *cmd)
{
 int code;

 if (cmd->out < 0 || cmd->err < 0)
  BUG("run_command with a pipe can cause deadlock");

 code = start_command(cmd);
 if (code)
  return code;
 return finish_command(cmd);
}
