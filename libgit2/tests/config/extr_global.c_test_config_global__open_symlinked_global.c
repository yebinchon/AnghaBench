
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int *,int *,char*) ;
 int git_config_open_default (int **) ;
 int symlink (char*,char*) ;

void test_config_global__open_symlinked_global(void)
{

 git_config *cfg;
 int32_t value;

 cl_git_mkfile("home/.gitconfig.linked", "[global]\n  test = 4567\n");
 cl_must_pass(symlink(".gitconfig.linked", "home/.gitconfig"));

 cl_git_pass(git_config_open_default(&cfg));
 cl_git_pass(git_config_get_int32(&value, cfg, "global.test"));
 cl_assert_equal_i(4567, value);

 git_config_free(cfg);

}
