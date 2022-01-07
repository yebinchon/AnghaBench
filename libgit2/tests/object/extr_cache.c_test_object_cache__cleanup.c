
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_OBJECT_BLOB ;
 scalar_t__ GIT_OBJECT_COMMIT ;
 scalar_t__ GIT_OBJECT_TREE ;
 int GIT_OPT_SET_CACHE_OBJECT_LIMIT ;
 int * g_repo ;
 int git_libgit2_opts (int ,int,size_t) ;
 int git_repository_free (int *) ;

void test_object_cache__cleanup(void)
{
 git_repository_free(g_repo);
 g_repo = ((void*)0);

 git_libgit2_opts(GIT_OPT_SET_CACHE_OBJECT_LIMIT, (int)GIT_OBJECT_BLOB, (size_t)0);
 git_libgit2_opts(GIT_OPT_SET_CACHE_OBJECT_LIMIT, (int)GIT_OBJECT_TREE, (size_t)4096);
 git_libgit2_opts(GIT_OPT_SET_CACHE_OBJECT_LIMIT, (int)GIT_OBJECT_COMMIT, (size_t)4096);
}
