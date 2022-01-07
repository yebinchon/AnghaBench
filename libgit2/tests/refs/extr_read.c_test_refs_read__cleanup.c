
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_repo ;
 int git_repository_free (int *) ;

void test_refs_read__cleanup(void)
{
 git_repository_free(g_repo);
 g_repo = ((void*)0);
}
