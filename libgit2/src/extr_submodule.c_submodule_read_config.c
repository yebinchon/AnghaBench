
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int ignore; int ignore_default; void* name; int fetch_recurse; int fetch_recurse_default; int update; int update_default; void* branch; void* url; void* path; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (void*) ;
 int GIT_SUBMODULE_STATUS_IN_CONFIG ;
 int get_value (char const**,int *,int *,void*,char*) ;
 int git__free (void*) ;
 void* git__strdup (char const*) ;
 int git_buf_dispose (int *) ;
 int git_submodule_parse_ignore (int *,char const*) ;
 int git_submodule_parse_recurse (int *,char const*) ;
 int git_submodule_parse_update (int *,char const*) ;
 int looks_like_command_line_option (char const*) ;
 scalar_t__ strcmp (void*,char const*) ;

__attribute__((used)) static int submodule_read_config(git_submodule *sm, git_config *cfg)
{
 git_buf key = GIT_BUF_INIT;
 const char *value;
 int error, in_config = 0;






 if ((error = get_value(&value, cfg, &key, sm->name, "path")) == 0) {
  in_config = 1;

  if (!looks_like_command_line_option(value)) {




   if (strcmp(sm->name, value) != 0) {
    if (sm->path != sm->name)
     git__free(sm->path);
    sm->path = git__strdup(value);
    GIT_ERROR_CHECK_ALLOC(sm->path);
   }

  }
 } else if (error != GIT_ENOTFOUND) {
  goto cleanup;
 }

 if ((error = get_value(&value, cfg, &key, sm->name, "url")) == 0) {

  if (!looks_like_command_line_option(value)) {
   in_config = 1;
   sm->url = git__strdup(value);
   GIT_ERROR_CHECK_ALLOC(sm->url);
  }
 } else if (error != GIT_ENOTFOUND) {
  goto cleanup;
 }

 if ((error = get_value(&value, cfg, &key, sm->name, "branch")) == 0) {
  in_config = 1;
  sm->branch = git__strdup(value);
  GIT_ERROR_CHECK_ALLOC(sm->branch);
 } else if (error != GIT_ENOTFOUND) {
  goto cleanup;
 }

 if ((error = get_value(&value, cfg, &key, sm->name, "update")) == 0) {
  in_config = 1;
  if ((error = git_submodule_parse_update(&sm->update, value)) < 0)
   goto cleanup;
  sm->update_default = sm->update;
 } else if (error != GIT_ENOTFOUND) {
  goto cleanup;
 }

 if ((error = get_value(&value, cfg, &key, sm->name, "fetchRecurseSubmodules")) == 0) {
  in_config = 1;
  if ((error = git_submodule_parse_recurse(&sm->fetch_recurse, value)) < 0)
   goto cleanup;
  sm->fetch_recurse_default = sm->fetch_recurse;
 } else if (error != GIT_ENOTFOUND) {
  goto cleanup;
 }

 if ((error = get_value(&value, cfg, &key, sm->name, "ignore")) == 0) {
  in_config = 1;
  if ((error = git_submodule_parse_ignore(&sm->ignore, value)) < 0)
   goto cleanup;
  sm->ignore_default = sm->ignore;
 } else if (error != GIT_ENOTFOUND) {
  goto cleanup;
 }

 if (in_config)
  sm->flags |= GIT_SUBMODULE_STATUS_IN_CONFIG;

 error = 0;

cleanup:
 git_buf_dispose(&key);
 return error;
}
