
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_branch_name (char const**,int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int ref ;
 int repo ;

void test_refs_branches_name__error_when_ref_is_no_branch(void)
{
 const char *name;

 cl_git_pass(git_reference_lookup(&ref,repo,"refs/notes/fanout"));
 cl_git_fail(git_branch_name(&name,ref));
}
