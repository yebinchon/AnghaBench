
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_dispose (int *) ;
 int git_config_find_global (int *) ;
 int git_config_find_programdata (int *) ;
 int git_config_find_system (int *) ;
 int git_config_find_xdg (int *) ;
 int git_config_free (int *) ;
 scalar_t__ git_config_get_bool (int*,int *,char*) ;
 int git_path_supports_symlinks (char const*) ;
 scalar_t__ load_config (int **,int *,int ,int ,int ,int ) ;
 int path_unless_empty (int *) ;

__attribute__((used)) static bool are_symlinks_supported(const char *wd_path)
{
 git_config *config = ((void*)0);
 git_buf global_buf = GIT_BUF_INIT;
 git_buf xdg_buf = GIT_BUF_INIT;
 git_buf system_buf = GIT_BUF_INIT;
 git_buf programdata_buf = GIT_BUF_INIT;
 int symlinks = 0;
 if (!(symlinks = git_path_supports_symlinks(wd_path)))
  goto done;

done:
 git_buf_dispose(&global_buf);
 git_buf_dispose(&xdg_buf);
 git_buf_dispose(&system_buf);
 git_buf_dispose(&programdata_buf);
 git_config_free(config);
 return symlinks != 0;
}
