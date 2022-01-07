
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int git_cmd; int no_stdin; char const* dir; int args; int env_array; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (int *,int ) ;
 int argv_array_pushf (int *,char*,int ,char const*) ;
 int argv_array_pushl (int *,char*,char*,char*,int *) ;
 int die (char*) ;
 int empty_tree_oid_hex () ;
 int get_super_prefix_or_empty () ;
 int prepare_submodule_repo_env (int *) ;
 scalar_t__ run_command (struct child_process*) ;

__attribute__((used)) static void submodule_reset_index(const char *path)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 prepare_submodule_repo_env(&cp.env_array);

 cp.git_cmd = 1;
 cp.no_stdin = 1;
 cp.dir = path;

 argv_array_pushf(&cp.args, "--super-prefix=%s%s/",
       get_super_prefix_or_empty(), path);
 argv_array_pushl(&cp.args, "read-tree", "-u", "--reset", ((void*)0));

 argv_array_push(&cp.args, empty_tree_oid_hex());

 if (run_command(&cp))
  die("could not reset submodule index");
}
