
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__depth(void)
{
 cl_git_mkfile("a", "[include]\npath = b");
 cl_git_mkfile("b", "[include]\npath = a");

 cl_git_fail(git_config_open_ondisk(&cfg, "a"));

 cl_git_pass(p_unlink("a"));
 cl_git_pass(p_unlink("b"));
}
