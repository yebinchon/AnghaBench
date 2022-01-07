
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int use_shell; int git_cmd; int out; int env; int args; } ;


 int argv_array_push (int *,char const*) ;
 int argv_array_pushf (int *,char*,char const*) ;
 int argv_array_split (int *,char const*) ;
 int git_config_get_value (char*,char const**) ;
 int local_repo_env ;

__attribute__((used)) static void fill_alternate_refs_command(struct child_process *cmd,
     const char *repo_path)
{
 const char *value;

 if (!git_config_get_value("core.alternateRefsCommand", &value)) {
  cmd->use_shell = 1;

  argv_array_push(&cmd->args, value);
  argv_array_push(&cmd->args, repo_path);
 } else {
  cmd->git_cmd = 1;

  argv_array_pushf(&cmd->args, "--git-dir=%s", repo_path);
  argv_array_push(&cmd->args, "for-each-ref");
  argv_array_push(&cmd->args, "--format=%(objectname)");

  if (!git_config_get_value("core.alternateRefsPrefixes", &value)) {
   argv_array_push(&cmd->args, "--");
   argv_array_split(&cmd->args, value);
  }
 }

 cmd->env = local_repo_env;
 cmd->out = -1;
}
