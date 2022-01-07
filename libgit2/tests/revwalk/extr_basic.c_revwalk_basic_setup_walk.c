
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _fixture ;
 int _repo ;
 int _walk ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char const*) ;
 int git_repository_open (int *,int ) ;
 int git_revwalk_new (int *,int ) ;

__attribute__((used)) static void revwalk_basic_setup_walk(const char *fixture)
{
 if (fixture) {
  _fixture = fixture;
  _repo = cl_git_sandbox_init(fixture);
 } else {
  cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));
 }

 cl_git_pass(git_revwalk_new(&_walk, _repo));
}
