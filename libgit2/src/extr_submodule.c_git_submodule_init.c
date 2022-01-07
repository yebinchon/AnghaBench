
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ update; int name; int url; int repo; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_config ;
struct TYPE_9__ {char const* ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ERROR_SUBMODULE ;
 scalar_t__ GIT_SUBMODULE_UPDATE_CHECKOUT ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_printf (TYPE_2__*,char*,int ) ;
 int git_config__update_entry (int *,char const*,char const*,int,int) ;
 int git_config_free (int *) ;
 int git_error_set (int ,char*,int ) ;
 int git_repository_config (int **,int ) ;
 int git_submodule_resolve_url (TYPE_2__*,int ,int ) ;
 char* git_submodule_update_to_str (scalar_t__) ;

int git_submodule_init(git_submodule *sm, int overwrite)
{
 int error;
 const char *val;
 git_buf key = GIT_BUF_INIT, effective_submodule_url = GIT_BUF_INIT;
 git_config *cfg = ((void*)0);

 if (!sm->url) {
  git_error_set(GIT_ERROR_SUBMODULE,
   "no URL configured for submodule '%s'", sm->name);
  return -1;
 }

 if ((error = git_repository_config(&cfg, sm->repo)) < 0)
  return error;



 if ((error = git_submodule_resolve_url(&effective_submodule_url, sm->repo, sm->url)) < 0 ||
  (error = git_buf_printf(&key, "submodule.%s.url", sm->name)) < 0 ||
  (error = git_config__update_entry(
   cfg, key.ptr, effective_submodule_url.ptr, overwrite != 0, 0)) < 0)
  goto cleanup;



 val = (sm->update == GIT_SUBMODULE_UPDATE_CHECKOUT) ?
  ((void*)0) : git_submodule_update_to_str(sm->update);

 if ((error = git_buf_printf(&key, "submodule.%s.update", sm->name)) < 0 ||
  (error = git_config__update_entry(
   cfg, key.ptr, val, overwrite != 0, 0)) < 0)
  goto cleanup;



cleanup:
 git_config_free(cfg);
 git_buf_dispose(&key);
 git_buf_dispose(&effective_submodule_url);

 return error;
}
