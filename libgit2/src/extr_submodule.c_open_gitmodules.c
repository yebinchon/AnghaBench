
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config_backend ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_MODULES_FILE ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,char const*,int ) ;
 int git_config_backend_free (int *) ;
 scalar_t__ git_config_backend_from_file (int **,int ) ;
 scalar_t__ git_config_backend_open (int *,int ,int *) ;
 scalar_t__ git_path_isfile (int ) ;
 char* git_repository_workdir (int *) ;

__attribute__((used)) static git_config_backend *open_gitmodules(
 git_repository *repo,
 int okay_to_create)
{
 const char *workdir = git_repository_workdir(repo);
 git_buf path = GIT_BUF_INIT;
 git_config_backend *mods = ((void*)0);

 if (workdir != ((void*)0)) {
  if (git_buf_joinpath(&path, workdir, GIT_MODULES_FILE) != 0)
   return ((void*)0);

  if (okay_to_create || git_path_isfile(path.ptr)) {

   if (git_config_backend_from_file(&mods, path.ptr) < 0)
    mods = ((void*)0);

   else if (git_config_backend_open(mods, GIT_CONFIG_LEVEL_LOCAL, repo) < 0) {
    git_config_backend_free(mods);
    mods = ((void*)0);
   }
  }
 }

 git_buf_dispose(&path);

 return mods;
}
