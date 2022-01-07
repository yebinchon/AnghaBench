
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int path; } ;
struct child_process {int git_cmd; int no_stdin; int no_stdout; int dir; int args; int env_array; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_pushl (int *,char*,char*,char*,char*,int *) ;
 int die (char*,int ) ;
 int finish_command (struct child_process*) ;
 int prepare_submodule_repo_env (int *) ;
 scalar_t__ start_command (struct child_process*) ;

__attribute__((used)) static int submodule_has_dirty_index(const struct submodule *sub)
{
 struct child_process cp = CHILD_PROCESS_INIT;

 prepare_submodule_repo_env(&cp.env_array);

 cp.git_cmd = 1;
 argv_array_pushl(&cp.args, "diff-index", "--quiet",
       "--cached", "HEAD", ((void*)0));
 cp.no_stdin = 1;
 cp.no_stdout = 1;
 cp.dir = sub->path;
 if (start_command(&cp))
  die("could not recurse into submodule '%s'", sub->path);

 return finish_command(&cp);
}
