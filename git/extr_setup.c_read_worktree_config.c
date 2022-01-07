
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository_format {int work_tree; int is_bare; } ;


 int config_error_nonbool (char const*) ;
 int free (int ) ;
 int git_config_bool (char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int read_worktree_config(const char *var, const char *value, void *vdata)
{
 struct repository_format *data = vdata;

 if (strcmp(var, "core.bare") == 0) {
  data->is_bare = git_config_bool(var, value);
 } else if (strcmp(var, "core.worktree") == 0) {
  if (!value)
   return config_error_nonbool(var);
  free(data->work_tree);
  data->work_tree = xstrdup(value);
 }
 return 0;
}
