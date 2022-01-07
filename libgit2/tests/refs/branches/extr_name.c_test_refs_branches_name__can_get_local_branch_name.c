
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_BRANCH_LOCAL ;
 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_pass (int ) ;
 int git_branch_lookup (int *,int ,char*,int ) ;
 int git_branch_name (char const**,int ) ;
 int ref ;
 int repo ;

void test_refs_branches_name__can_get_local_branch_name(void)
{
 const char *name;

 cl_git_pass(git_branch_lookup(&ref,repo,"master",GIT_BRANCH_LOCAL));
 cl_git_pass(git_branch_name(&name,ref));
 cl_assert_equal_s("master",name);
}
