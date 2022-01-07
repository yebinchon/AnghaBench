
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int * argv; scalar_t__ use_shell; scalar_t__ git_cmd; } ;
struct argv_array {char** argv; } ;


 int BUG (char*) ;
 int ENOENT ;
 char* SHELL_PATH ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushv (struct argv_array*,int *) ;
 int errno ;
 int free (char*) ;
 char* locate_in_PATH (char*) ;
 int prepare_shell_cmd (struct argv_array*,int *) ;
 int strchr (char*,char) ;

__attribute__((used)) static int prepare_cmd(struct argv_array *out, const struct child_process *cmd)
{
 if (!cmd->argv[0])
  BUG("command is empty");





 argv_array_push(out, SHELL_PATH);

 if (cmd->git_cmd) {
  argv_array_push(out, "git");
  argv_array_pushv(out, cmd->argv);
 } else if (cmd->use_shell) {
  prepare_shell_cmd(out, cmd->argv);
 } else {
  argv_array_pushv(out, cmd->argv);
 }







 if (!strchr(out->argv[1], '/')) {
  char *program = locate_in_PATH(out->argv[1]);
  if (program) {
   free((char *)out->argv[1]);
   out->argv[1] = program;
  } else {
   argv_array_clear(out);
   errno = ENOENT;
   return -1;
  }
 }

 return 0;
}
