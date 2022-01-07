
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_get_int32 (int*,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int git_config_snapshot (int *,int ) ;
 int p_unlink (char*) ;
 int snapshot ;

void test_config_snapshot__includes(void)
{
 int i;

 cl_git_mkfile("including", "[include]\npath = included");
 cl_git_mkfile("included", "[section]\nkey = 1\n");

 cl_git_pass(git_config_open_ondisk(&cfg, "including"));
 cl_git_pass(git_config_snapshot(&snapshot, cfg));

 cl_git_pass(git_config_get_int32(&i, snapshot, "section.key"));
 cl_assert_equal_i(i, 1);


 cl_git_mkfile("included", "[section]\nkey = 11\n");


 cl_git_pass(git_config_get_int32(&i, cfg, "section.key"));
 cl_assert_equal_i(i, 11);
 cl_git_pass(git_config_get_int32(&i, snapshot, "section.key"));
 cl_assert_equal_i(i, 1);

 cl_git_pass(p_unlink("including"));
 cl_git_pass(p_unlink("included"));
}
