
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int git_cmd; int err; int args; } ;


 int argv_array_push (int *,char*) ;
 int close (int) ;
 int copy_to_log (int) ;
 int finish_command (struct child_process*) ;
 scalar_t__ start_command (struct child_process*) ;

__attribute__((used)) static int run_service_command(struct child_process *cld)
{
 argv_array_push(&cld->args, ".");
 cld->git_cmd = 1;
 cld->err = -1;
 if (start_command(cld))
  return -1;

 close(0);
 close(1);

 copy_to_log(cld->err);

 return finish_command(cld);
}
