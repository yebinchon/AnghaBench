
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_5__ {char const* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_CONFIG_LEVEL_PROGRAMDATA ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int GIT_ENOTFOUND ;
 int GIT_REPOSITORY_ITEM_CONFIG ;
 int assert (int **) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_add_file_ondisk (int *,char const*,int ,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;
 int git_error_clear () ;
 int git_repository_item_path (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int load_config(
 git_config **out,
 git_repository *repo,
 const char *global_config_path,
 const char *xdg_config_path,
 const char *system_config_path,
 const char *programdata_path)
{
 int error;
 git_buf config_path = GIT_BUF_INIT;
 git_config *cfg = ((void*)0);

 assert(out);

 if ((error = git_config_new(&cfg)) < 0)
  return error;

 if (repo) {
  if ((error = git_repository_item_path(&config_path, repo, GIT_REPOSITORY_ITEM_CONFIG)) == 0)
   error = git_config_add_file_ondisk(cfg, config_path.ptr, GIT_CONFIG_LEVEL_LOCAL, repo, 0);

  if (error && error != GIT_ENOTFOUND)
   goto on_error;

  git_buf_dispose(&config_path);
 }

 if (global_config_path != ((void*)0) &&
  (error = git_config_add_file_ondisk(
   cfg, global_config_path, GIT_CONFIG_LEVEL_GLOBAL, repo, 0)) < 0 &&
  error != GIT_ENOTFOUND)
  goto on_error;

 if (xdg_config_path != ((void*)0) &&
  (error = git_config_add_file_ondisk(
   cfg, xdg_config_path, GIT_CONFIG_LEVEL_XDG, repo, 0)) < 0 &&
  error != GIT_ENOTFOUND)
  goto on_error;

 if (system_config_path != ((void*)0) &&
  (error = git_config_add_file_ondisk(
   cfg, system_config_path, GIT_CONFIG_LEVEL_SYSTEM, repo, 0)) < 0 &&
  error != GIT_ENOTFOUND)
  goto on_error;

 if (programdata_path != ((void*)0) &&
  (error = git_config_add_file_ondisk(
   cfg, programdata_path, GIT_CONFIG_LEVEL_PROGRAMDATA, repo, 0)) < 0 &&
  error != GIT_ENOTFOUND)
  goto on_error;

 git_error_clear();

 *out = cfg;
 return 0;

on_error:
 git_buf_dispose(&config_path);
 git_config_free(cfg);
 *out = ((void*)0);
 return error;
}
