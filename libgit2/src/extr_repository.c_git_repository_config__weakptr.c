
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * _config; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REFCOUNT_OWN (int *,TYPE_1__*) ;
 int * git__compare_and_swap (int **,int *,int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_len (int *) ;
 int git_config__global_location (int *) ;
 int git_config_find_global (int *) ;
 int git_config_find_programdata (int *) ;
 int git_config_find_system (int *) ;
 int git_config_find_xdg (int *) ;
 int git_config_free (int *) ;
 int load_config (int **,TYPE_1__*,int ,int ,int ,int ) ;
 int path_unless_empty (int *) ;

int git_repository_config__weakptr(git_config **out, git_repository *repo)
{
 int error = 0;

 if (repo->_config == ((void*)0)) {
  git_buf global_buf = GIT_BUF_INIT;
  git_buf xdg_buf = GIT_BUF_INIT;
  git_buf system_buf = GIT_BUF_INIT;
  git_buf programdata_buf = GIT_BUF_INIT;
  git_config *config;

  git_config_find_global(&global_buf);
  git_config_find_xdg(&xdg_buf);
  git_config_find_system(&system_buf);
  git_config_find_programdata(&programdata_buf);


  if (git_buf_len(&global_buf) == 0)
   git_config__global_location(&global_buf);

  error = load_config(
   &config, repo,
   path_unless_empty(&global_buf),
   path_unless_empty(&xdg_buf),
   path_unless_empty(&system_buf),
   path_unless_empty(&programdata_buf));
  if (!error) {
   GIT_REFCOUNT_OWN(config, repo);

   config = git__compare_and_swap(&repo->_config, ((void*)0), config);
   if (config != ((void*)0)) {
    GIT_REFCOUNT_OWN(config, ((void*)0));
    git_config_free(config);
   }
  }

  git_buf_dispose(&global_buf);
  git_buf_dispose(&xdg_buf);
  git_buf_dispose(&system_buf);
  git_buf_dispose(&programdata_buf);
 }

 *out = repo->_config;
 return error;
}
