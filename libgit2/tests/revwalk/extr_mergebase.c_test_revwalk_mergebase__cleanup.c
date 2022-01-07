
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int * _repo2 ;
 int git_repository_free (int *) ;

void test_revwalk_mergebase__cleanup(void)
{
 git_repository_free(_repo);
 _repo = ((void*)0);

 git_repository_free(_repo2);
 _repo2 = ((void*)0);
}
