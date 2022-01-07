
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_CONFIG_FILENAME_INREPO ;
 int GIT_CONFIG_FILE_MODE ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int create_empty_file (char const*,int ) ;
 char* git_buf_cstr (int *) ;
 scalar_t__ git_buf_joinpath (int *,char const*,int ) ;
 int git_config_add_file_ondisk (int *,char const*,int ,int *,int) ;
 int git_config_free (int *) ;
 int git_config_open_level (int **,int *,int ) ;
 int git_config_open_ondisk (int **,char const*) ;
 int git_error_clear () ;
 int git_path_isfile (char const*) ;
 int git_repository_config__weakptr (int **,int *) ;

__attribute__((used)) static int repo_local_config(
 git_config **out,
 git_buf *config_dir,
 git_repository *repo,
 const char *repo_dir)
{
 int error = 0;
 git_config *parent;
 const char *cfg_path;

 if (git_buf_joinpath(config_dir, repo_dir, GIT_CONFIG_FILENAME_INREPO) < 0)
  return -1;
 cfg_path = git_buf_cstr(config_dir);


 if (!git_path_isfile(cfg_path) &&
  (error = create_empty_file(cfg_path, GIT_CONFIG_FILE_MODE)) < 0)
  return error;


 if (!repo)
  return git_config_open_ondisk(out, cfg_path);


 if ((error = git_repository_config__weakptr(&parent, repo)) < 0)
  return error;

 if (git_config_open_level(out, parent, GIT_CONFIG_LEVEL_LOCAL) < 0) {
  git_error_clear();

  if (!(error = git_config_add_file_ondisk(
    parent, cfg_path, GIT_CONFIG_LEVEL_LOCAL, repo, 0)))
   error = git_config_open_level(out, parent, GIT_CONFIG_LEVEL_LOCAL);
 }

 git_config_free(parent);

 return error;
}
