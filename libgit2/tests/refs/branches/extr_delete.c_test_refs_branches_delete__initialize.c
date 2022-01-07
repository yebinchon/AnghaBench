
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int fake_remote ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int *,int ,char*,int *,int ,int *) ;
 int repo ;

void test_refs_branches_delete__initialize(void)
{
 git_oid id;

 repo = cl_git_sandbox_init("testrepo.git");

 cl_git_pass(git_oid_fromstr(&id, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
 cl_git_pass(git_reference_create(&fake_remote, repo, "refs/remotes/nulltoken/master", &id, 0, ((void*)0)));
}
