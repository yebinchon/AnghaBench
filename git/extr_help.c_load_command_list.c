
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {int cnt; int names; } ;


 int PATH_SEP ;
 int QSORT (int ,int ,int ) ;
 int cmdname_compare ;
 int exclude_cmds (struct cmdnames*,struct cmdnames*) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* git_exec_path () ;
 int list_commands_in_dir (struct cmdnames*,char const*,char const*) ;
 char* strchr (char*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int uniq (struct cmdnames*) ;
 char* xstrdup (char const*) ;

void load_command_list(const char *prefix,
  struct cmdnames *main_cmds,
  struct cmdnames *other_cmds)
{
 const char *env_path = getenv("PATH");
 const char *exec_path = git_exec_path();

 if (exec_path) {
  list_commands_in_dir(main_cmds, exec_path, prefix);
  QSORT(main_cmds->names, main_cmds->cnt, cmdname_compare);
  uniq(main_cmds);
 }

 if (env_path) {
  char *paths, *path, *colon;
  path = paths = xstrdup(env_path);
  while (1) {
   if ((colon = strchr(path, PATH_SEP)))
    *colon = 0;
   if (!exec_path || strcmp(path, exec_path))
    list_commands_in_dir(other_cmds, path, prefix);

   if (!colon)
    break;
   path = colon + 1;
  }
  free(paths);

  QSORT(other_cmds->names, other_cmds->cnt, cmdname_compare);
  uniq(other_cmds);
 }
 exclude_cmds(other_cmds, main_cmds);
}
