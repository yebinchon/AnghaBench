
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array {int dummy; } ;
struct child_process {int out; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int SIGPIPE ;
 int close (int) ;
 scalar_t__ do_reachable_revlist (struct child_process*,struct object_array*,int *) ;
 scalar_t__ finish_command (struct child_process*) ;
 int read_in_full (int,char*,int) ;
 int sigchain_pop (int ) ;

__attribute__((used)) static int has_unreachable(struct object_array *src)
{
 struct child_process cmd = CHILD_PROCESS_INIT;
 char buf[1];
 int i;

 if (do_reachable_revlist(&cmd, src, ((void*)0)) < 0)
  return 1;





 i = read_in_full(cmd.out, buf, 1);
 if (i)
  goto error;
 close(cmd.out);
 cmd.out = -1;






 if (finish_command(&cmd))
  goto error;


 return 0;

error:
 sigchain_pop(SIGPIPE);
 if (cmd.out >= 0)
  close(cmd.out);
 return 1;
}
