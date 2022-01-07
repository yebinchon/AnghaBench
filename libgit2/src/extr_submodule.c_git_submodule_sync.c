
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int flags; int url; int name; int * repo; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;
typedef int git_config ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ERROR_SUBMODULE ;
 int GIT_SUBMODULE_STATUS_IN_WD ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_join3 (TYPE_2__*,char,char*,int ,char*) ;
 int git_buf_printf (TYPE_2__*,char*,int ) ;
 int git_buf_sets (TYPE_2__*,char*) ;
 int git_config__update_entry (int *,int ,int ,int,int) ;
 int git_error_clear () ;
 int git_error_set (int ,char*,int ) ;
 int git_repository_config__weakptr (int **,int *) ;
 int git_repository_free (int *) ;
 int git_submodule_open (int **,TYPE_1__*) ;
 int lookup_head_remote_key (TYPE_2__*,int *) ;

int git_submodule_sync(git_submodule *sm)
{
 int error = 0;
 git_config *cfg = ((void*)0);
 git_buf key = GIT_BUF_INIT;
 git_repository *smrepo = ((void*)0);

 if (!sm->url) {
  git_error_set(GIT_ERROR_SUBMODULE,
   "no URL configured for submodule '%s'", sm->name);
  return -1;
 }



 if (!(error = git_repository_config__weakptr(&cfg, sm->repo)) &&
  !(error = git_buf_printf(&key, "submodule.%s.url", sm->name)))
  error = git_config__update_entry(cfg, key.ptr, sm->url, 1, 1);



 if (!error &&
  (sm->flags & GIT_SUBMODULE_STATUS_IN_WD) != 0 &&
  !(error = git_submodule_open(&smrepo, sm)))
 {
  git_buf remote_name = GIT_BUF_INIT;

  if ((error = git_repository_config__weakptr(&cfg, smrepo)) < 0)
                                                   ;
  else if ((error = lookup_head_remote_key(&remote_name, smrepo)) < 0) {
   git_error_clear();
   error = git_buf_sets(&key, "remote.origin.url");
  } else {
   error = git_buf_join3(
    &key, '.', "remote", remote_name.ptr, "url");
   git_buf_dispose(&remote_name);
  }

  if (!error)
   error = git_config__update_entry(cfg, key.ptr, sm->url, 1, 0);

  git_repository_free(smrepo);
 }

 git_buf_dispose(&key);

 return error;
}
