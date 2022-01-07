
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int cl_git_sandbox_cleanup () ;

void test_repo_hashfile__cleanup(void)
{
 cl_git_sandbox_cleanup();
 _repo = ((void*)0);
}
