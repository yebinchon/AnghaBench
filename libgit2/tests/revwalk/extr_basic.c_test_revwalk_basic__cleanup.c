
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _fixture ;
 int * _repo ;
 int * _walk ;
 int cl_git_sandbox_cleanup () ;
 int git_repository_free (int *) ;
 int git_revwalk_free (int *) ;

void test_revwalk_basic__cleanup(void)
{
 git_revwalk_free(_walk);

 if (_fixture)
  cl_git_sandbox_cleanup();
 else
  git_repository_free(_repo);

 _fixture = ((void*)0);
 _repo = ((void*)0);
 _walk = ((void*)0);
}
