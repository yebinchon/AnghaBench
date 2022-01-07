
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int git_repository ;
typedef int git_config_level_t ;
struct TYPE_5__ {int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_config_backend ;
typedef int git_config ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int GIT_ERROR_CONFIG ;
 int assert (int) ;
 scalar_t__ errno ;
 int git_config_add_backend (int *,TYPE_1__*,int ,int const*,int) ;
 scalar_t__ git_config_backend_from_file (TYPE_1__**,char const*) ;
 int git_error_set (int ,char*,char const*) ;
 int p_stat (char const*,struct stat*) ;
 int stub1 (TYPE_1__*) ;

int git_config_add_file_ondisk(
 git_config *cfg,
 const char *path,
 git_config_level_t level,
 const git_repository *repo,
 int force)
{
 git_config_backend *file = ((void*)0);
 struct stat st;
 int res;

 assert(cfg && path);

 res = p_stat(path, &st);
 if (res < 0 && errno != ENOENT && errno != ENOTDIR) {
  git_error_set(GIT_ERROR_CONFIG, "failed to stat '%s'", path);
  return -1;
 }

 if (git_config_backend_from_file(&file, path) < 0)
  return -1;

 if ((res = git_config_add_backend(cfg, file, level, repo, force)) < 0) {




  file->free(file);
  return res;
 }

 return 0;
}
