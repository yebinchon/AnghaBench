
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int GIT_CONFIG_LEVEL_LOCAL ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (TYPE_1__*,int *,char*) ;
 int git_config_new (int **) ;

void test_config_configlevel__can_replace_a_config_file_at_an_existing_level(void)
{
 git_config *cfg;
 git_buf buf = {0};

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config18"),
  GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 1));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config19"),
  GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 1));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "core.stringglobal"));
 cl_assert_equal_s("don't find me!", buf.ptr);

 git_buf_dispose(&buf);
 git_config_free(cfg);
}
