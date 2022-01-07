
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_GET_SEARCH_PATH ;
 int _global_path ;
 int * _repo ;
 int git_libgit2_opts (int ,int ,int *) ;

void test_repo_init__initialize(void)
{
 _repo = ((void*)0);

 git_libgit2_opts(GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL,
    &_global_path);
}
