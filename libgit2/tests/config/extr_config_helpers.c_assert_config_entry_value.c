
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_config_get_string_buf (int *,int *,char const*) ;
 int git_repository_config__weakptr (int **,int *) ;

void assert_config_entry_value(
 git_repository *repo,
 const char *name,
 const char *expected_value)
{
 git_config *config;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_repository_config__weakptr(&config, repo));

 cl_git_pass(git_config_get_string_buf(&buf, config, name));

 cl_assert_equal_s(expected_value, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
