
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char const*) ;
 int * g_repo_cloned ;
 int git_repository_free (int *) ;

__attribute__((used)) static void cleanup_repository(void *path)
{
 cl_fixture_cleanup((const char *)path);

 git_repository_free(g_repo_cloned);
 g_repo_cloned = ((void*)0);
}
