
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int _walk ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,int ) ;
 int git_revwalk_new (int *,int ) ;

void test_revwalk_signatureparsing__initialize(void)
{
 cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));
 cl_git_pass(git_revwalk_new(&_walk, _repo));
}
