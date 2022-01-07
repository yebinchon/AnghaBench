
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int git_libgit2_opts (int ,int) ;

void test_object_tree_write__cleanup(void)
{
   cl_git_sandbox_cleanup();

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 1));
}
