
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int git_error_clear () ;
 int * git_error_last () ;
 int p_unlink (char*) ;

void test_config_include__missing(void)
{
 cl_git_mkfile("including", "[include]\npath = nonexistentfile\n[foo]\nbar = baz");

 git_error_clear();
 cl_git_pass(git_config_open_ondisk(&cfg, "including"));
 cl_assert(git_error_last() == ((void*)0));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar"));
 cl_assert_equal_s("baz", git_buf_cstr(&buf));

 cl_git_pass(p_unlink("including"));
}
