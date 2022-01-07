
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_peel_repo ;
 int * g_repo ;
 int git_repository_free (int *) ;

void test_refs_peel__cleanup(void)
{
 git_repository_free(g_repo);
 g_repo = ((void*)0);
 git_repository_free(g_peel_repo);
 g_peel_repo = ((void*)0);
}
