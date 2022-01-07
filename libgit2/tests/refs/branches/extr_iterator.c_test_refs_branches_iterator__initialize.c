
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int fake_remote ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int *,int ,char*,int *,int ,int *) ;
 int git_repository_open (int *,char*) ;
 int repo ;

void test_refs_branches_iterator__initialize(void)
{
 git_oid id;

 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(git_repository_open(&repo, "testrepo.git"));

 cl_git_pass(git_oid_fromstr(&id, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
 cl_git_pass(git_reference_create(&fake_remote, repo, "refs/remotes/nulltoken/master", &id, 0, ((void*)0)));
}
