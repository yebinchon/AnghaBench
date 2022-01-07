
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int * _walk ;
 int git_repository_free (int *) ;
 int git_revwalk_free (int *) ;

void test_revwalk_signatureparsing__cleanup(void)
{
 git_revwalk_free(_walk);
 _walk = ((void*)0);

 git_repository_free(_repo);
 _repo = ((void*)0);
}
