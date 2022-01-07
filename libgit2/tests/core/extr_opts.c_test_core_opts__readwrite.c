
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_GET_MWINDOW_SIZE ;
 int GIT_OPT_SET_MWINDOW_SIZE ;
 int cl_assert (int) ;
 int git_libgit2_opts (int ,...) ;

void test_core_opts__readwrite(void)
{
 size_t old_val = 0;
 size_t new_val = 0;

 git_libgit2_opts(GIT_OPT_GET_MWINDOW_SIZE, &old_val);
 git_libgit2_opts(GIT_OPT_SET_MWINDOW_SIZE, (size_t)1234);
 git_libgit2_opts(GIT_OPT_GET_MWINDOW_SIZE, &new_val);

 cl_assert(new_val == 1234);

 git_libgit2_opts(GIT_OPT_SET_MWINDOW_SIZE, old_val);
 git_libgit2_opts(GIT_OPT_GET_MWINDOW_SIZE, &new_val);

 cl_assert(new_val == old_val);
}
