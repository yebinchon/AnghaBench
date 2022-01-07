
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EDIRECTORY ;
 int cl_git_fail_with (int ,int ) ;
 int g_idx ;
 int git_index_add_bypath (int ,char*) ;

void test_index_bypath__add_directory(void)
{
 cl_git_fail_with(GIT_EDIRECTORY, git_index_add_bypath(g_idx, "just_a_dir"));
}
