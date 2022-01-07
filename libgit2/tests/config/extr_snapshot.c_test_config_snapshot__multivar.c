
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int count_me ;
 int git_config_get_multivar_foreach (int ,char*,int *,int ,int*) ;
 int git_config_open_ondisk (int *,char*) ;
 int git_config_snapshot (int *,int ) ;
 int p_unlink (char*) ;
 int snapshot ;

void test_config_snapshot__multivar(void)
{
 int count;

 count = 0;
 cl_git_mkfile("config", "[old]\nvalue = 5\nvalue = 6\n");
 cl_git_pass(git_config_open_ondisk(&cfg, "config"));
 cl_git_pass(git_config_get_multivar_foreach(cfg, "old.value", ((void*)0), count_me, &count));
 cl_assert_equal_i(2, count);

 count = 0;
 cl_git_pass(git_config_snapshot(&snapshot, cfg));
 cl_git_pass(git_config_get_multivar_foreach(snapshot, "old.value", ((void*)0), count_me, &count));
 cl_assert_equal_i(2, count);

 cl_git_pass(p_unlink("config"));
}
