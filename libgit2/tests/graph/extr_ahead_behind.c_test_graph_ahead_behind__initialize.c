
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _repo ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int commit ;
 int git_commit_lookup (int *,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_open (int *,int ) ;

void test_graph_ahead_behind__initialize(void)
{
 git_oid oid;
 cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));

 cl_git_pass(git_oid_fromstr(&oid, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
 cl_git_pass(git_commit_lookup(&commit, _repo, &oid));
}
