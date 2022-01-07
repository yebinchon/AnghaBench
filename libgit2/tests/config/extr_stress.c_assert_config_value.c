
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int buf ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_config_get_string_buf (int *,int *,char const*) ;

void assert_config_value(git_config *config, const char *key, const char *value)
{
 git_buf_clear(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, config, key));
 cl_assert_equal_s(value, git_buf_cstr(&buf));
}
