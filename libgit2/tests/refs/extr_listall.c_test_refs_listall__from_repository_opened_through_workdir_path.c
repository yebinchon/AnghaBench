
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int ensure_no_refname_starts_with_a_forward_slash (char*) ;
 int p_rename (char*,char*) ;

void test_refs_listall__from_repository_opened_through_workdir_path(void)
{
 cl_fixture_sandbox("status");
 cl_git_pass(p_rename("status/.gitted", "status/.git"));

 ensure_no_refname_starts_with_a_forward_slash("status");

 cl_fixture_cleanup("status");
}
