
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository_format {int unknown_extensions; void* worktree_config; int partial_clone; void* precious_objects; int version; } ;


 int config_error_nonbool (char const*) ;
 void* git_config_bool (char const*,char const*) ;
 int git_config_int (char const*,char const*) ;
 int read_worktree_config (char const*,char const*,void*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ strcmp (char const*,char*) ;
 int string_list_append (int *,char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int check_repo_format(const char *var, const char *value, void *vdata)
{
 struct repository_format *data = vdata;
 const char *ext;

 if (strcmp(var, "core.repositoryformatversion") == 0)
  data->version = git_config_int(var, value);
 else if (skip_prefix(var, "extensions.", &ext)) {





  if (!strcmp(ext, "noop"))
   ;
  else if (!strcmp(ext, "preciousobjects"))
   data->precious_objects = git_config_bool(var, value);
  else if (!strcmp(ext, "partialclone")) {
   if (!value)
    return config_error_nonbool(var);
   data->partial_clone = xstrdup(value);
  } else if (!strcmp(ext, "worktreeconfig"))
   data->worktree_config = git_config_bool(var, value);
  else
   string_list_append(&data->unknown_extensions, ext);
 }

 return read_worktree_config(var, value, vdata);
}
