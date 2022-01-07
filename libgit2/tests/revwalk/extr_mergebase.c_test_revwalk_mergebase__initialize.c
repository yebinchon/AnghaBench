
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int _repo2 ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,int ) ;

void test_revwalk_mergebase__initialize(void)
{
 cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));
 cl_git_pass(git_repository_open(&_repo2, cl_fixture("twowaymerge.git")));
}
