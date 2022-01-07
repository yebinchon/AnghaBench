
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _cl_repo ;
 int * _cl_sandbox ;
 int cl_fixture_cleanup (int *) ;
 int git_repository_free (int *) ;

void cl_git_sandbox_cleanup(void)
{
 if (_cl_repo) {
  git_repository_free(_cl_repo);
  _cl_repo = ((void*)0);
 }
 if (_cl_sandbox) {
  cl_fixture_cleanup(_cl_sandbox);
  _cl_sandbox = ((void*)0);
 }
}
