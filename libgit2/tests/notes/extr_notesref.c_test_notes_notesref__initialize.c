
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,char*) ;

void test_notes_notesref__initialize(void)
{
 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(git_repository_open(&_repo, "testrepo.git"));
}
