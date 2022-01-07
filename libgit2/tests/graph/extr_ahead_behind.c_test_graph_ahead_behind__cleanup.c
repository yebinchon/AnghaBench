
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int * commit ;
 int git_commit_free (int *) ;
 int git_repository_free (int *) ;

void test_graph_ahead_behind__cleanup(void)
{
 git_commit_free(commit);
 commit = ((void*)0);

 git_repository_free(_repo);
 _repo = ((void*)0);
}
