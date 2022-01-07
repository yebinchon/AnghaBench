
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_foreach (int *,int ,int*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;
 int mv_read_cb ;

void test_config_multivar__foreach(void)
{
 git_config *cfg;
 int n = 0;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config11")));

 cl_git_pass(git_config_foreach(cfg, mv_read_cb, &n));
 cl_assert(n == 2);

 git_config_free(cfg);
}
