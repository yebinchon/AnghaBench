
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;
 int git_config_set_string (int *,char const*,char const*) ;
 int git_libgit2_opts (int ,int ,char const*) ;
 int p_mkdir (char const*,int) ;

void create_tmp_global_config(const char *dirname, const char *key, const char *val)
{
 git_buf path = GIT_BUF_INIT;
 git_config *config;

 cl_git_pass(git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH,
  GIT_CONFIG_LEVEL_GLOBAL, dirname));
 cl_must_pass(p_mkdir(dirname, 0777));
 cl_git_pass(git_buf_joinpath(&path, dirname, ".gitconfig"));
 cl_git_pass(git_config_open_ondisk(&config, path.ptr));
 cl_git_pass(git_config_set_string(config, key, val));
 git_config_free(config);
 git_buf_dispose(&path);
}
