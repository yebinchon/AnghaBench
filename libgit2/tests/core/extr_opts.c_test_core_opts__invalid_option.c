
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int git_libgit2_opts (int,char*) ;

void test_core_opts__invalid_option(void)
{
 cl_git_fail(git_libgit2_opts(-1, "foobar"));
}
