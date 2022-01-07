
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {char const* name; } ;
struct refspec {int raw_nr; char const** raw; } ;
struct child_process {int git_cmd; int no_stdin; int no_stdout; char const* dir; int env_array; int args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (int *,char const*) ;
 int die (char*,char const*) ;
 int prepare_submodule_repo_env (int *) ;
 scalar_t__ run_command (struct child_process*) ;

__attribute__((used)) static void submodule_push_check(const char *path, const char *head,
     const struct remote *remote,
     const struct refspec *rs)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 int i;

 argv_array_push(&cp.args, "submodule--helper");
 argv_array_push(&cp.args, "push-check");
 argv_array_push(&cp.args, head);
 argv_array_push(&cp.args, remote->name);

 for (i = 0; i < rs->raw_nr; i++)
  argv_array_push(&cp.args, rs->raw[i]);

 prepare_submodule_repo_env(&cp.env_array);
 cp.git_cmd = 1;
 cp.no_stdin = 1;
 cp.no_stdout = 1;
 cp.dir = path;






 if (run_command(&cp))
  die("process for submodule '%s' failed", path);
}
