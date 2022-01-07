
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int GIT_CONFIG_LEVEL_XDG ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (TYPE_1__*,int *,char const*) ;
 int git_config_open_default (int **) ;
 int git_config_open_global (int **,int *) ;
 int git_config_open_level (int **,int *,int ) ;
 int git_config_set_string (int *,char const*,char const*) ;

void test_config_global__open_xdg(void)
{
 git_config *cfg, *xdg, *selected;
 const char *str = "teststring";
 const char *key = "this.variable";
 git_buf buf = {0};

 cl_git_mkfile("xdg/git/config", "# XDG config\n[core]\n  test = 1\n");

 cl_git_pass(git_config_open_default(&cfg));
 cl_git_pass(git_config_open_level(&xdg, cfg, GIT_CONFIG_LEVEL_XDG));
 cl_git_pass(git_config_open_global(&selected, cfg));

 cl_git_pass(git_config_set_string(xdg, key, str));
 cl_git_pass(git_config_get_string_buf(&buf, selected, key));
 cl_assert_equal_s(str, buf.ptr);

 git_buf_dispose(&buf);
 git_config_free(selected);
 git_config_free(xdg);
 git_config_free(cfg);
}
