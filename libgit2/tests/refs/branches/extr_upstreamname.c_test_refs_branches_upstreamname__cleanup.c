
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_buf_dispose (int *) ;
 int git_repository_free (int *) ;
 int * repo ;
 int upstream_name ;

void test_refs_branches_upstreamname__cleanup(void)
{
 git_buf_dispose(&upstream_name);

 git_repository_free(repo);
 repo = ((void*)0);
}
