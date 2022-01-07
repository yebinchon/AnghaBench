
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int ) ;

void test_index_tests__cleanup(void)
{
 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY, 0));
}
