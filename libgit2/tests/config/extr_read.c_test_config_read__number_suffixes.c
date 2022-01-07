
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int git_config ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int64 (int*,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__number_suffixes(void)
{
 git_config *cfg;
 int64_t i;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config5")));

 cl_git_pass(git_config_get_int64(&i, cfg, "number.simple"));
 cl_assert(i == 1);

 cl_git_pass(git_config_get_int64(&i, cfg, "number.k"));
 cl_assert(i == 1 * 1024);

 cl_git_pass(git_config_get_int64(&i, cfg, "number.kk"));
 cl_assert(i == 1 * 1024);

 cl_git_pass(git_config_get_int64(&i, cfg, "number.m"));
 cl_assert(i == 1 * 1024 * 1024);

 cl_git_pass(git_config_get_int64(&i, cfg, "number.mm"));
 cl_assert(i == 1 * 1024 * 1024);

 cl_git_pass(git_config_get_int64(&i, cfg, "number.g"));
 cl_assert(i == 1 * 1024 * 1024 * 1024);

 cl_git_pass(git_config_get_int64(&i, cfg, "number.gg"));
 cl_assert(i == 1 * 1024 * 1024 * 1024);

 git_config_free(cfg);
}
