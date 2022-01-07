
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int * g_repo ;
 int git_repository_free (int *) ;

void test_index_racy__cleanup(void)
{
 git_repository_free(g_repo);
 g_repo = ((void*)0);

 cl_fixture_cleanup("diff_racy");
}
