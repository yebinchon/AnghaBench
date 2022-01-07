
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int git_futils_rmdir_r (char*,int *,int ) ;

void test_core_stat__cleanup(void)
{
 git_futils_rmdir_r("root", ((void*)0), GIT_RMDIR_REMOVE_FILES);
}
