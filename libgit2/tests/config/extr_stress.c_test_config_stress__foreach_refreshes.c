
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int foreach_cb ;
 int git__free (char*) ;
 int git_config_foreach_match (int *,char*,int ,char**) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char*) ;

void test_config_stress__foreach_refreshes(void)
{
 git_config *config_w, *config_r;
 char *value = ((void*)0);

 cl_git_pass(git_config_open_ondisk(&config_w, "./cfg"));
 cl_git_pass(git_config_open_ondisk(&config_r, "./cfg"));

 cl_git_pass(git_config_set_string(config_w, "key.value", "1"));
 cl_git_pass(git_config_foreach_match(config_r, "key.value", foreach_cb, &value));

 cl_assert_equal_s(value, "1");

 git_config_free(config_r);
 git_config_free(config_w);
 git__free(value);
}
