
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ELOCKED ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_string (int *,char*,char*) ;

void test_config_write__updating_a_locked_config_file_returns_ELOCKED(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));

 cl_git_mkfile("config9.lock", "[core]\n");

 cl_git_fail_with(git_config_set_string(cfg, "core.dump", "boom"), GIT_ELOCKED);

 git_config_free(cfg);
}
