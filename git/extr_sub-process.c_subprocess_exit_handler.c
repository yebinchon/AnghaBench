
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int out; int in; } ;


 int SIGPIPE ;
 int SIG_IGN ;
 int close (int ) ;
 int finish_command (struct child_process*) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;

__attribute__((used)) static void subprocess_exit_handler(struct child_process *process)
{
 sigchain_push(SIGPIPE, SIG_IGN);

 close(process->in);
 close(process->out);
 sigchain_pop(SIGPIPE);

 finish_command(process);
}
