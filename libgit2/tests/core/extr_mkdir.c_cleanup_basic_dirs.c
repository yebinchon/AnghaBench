
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_EMPTY_HIERARCHY ;
 int GIT_UNUSED (void*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;

__attribute__((used)) static void cleanup_basic_dirs(void *ref)
{
 GIT_UNUSED(ref);
 git_futils_rmdir_r("d0", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
 git_futils_rmdir_r("d1", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
 git_futils_rmdir_r("d2", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
 git_futils_rmdir_r("d3", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
 git_futils_rmdir_r("d4", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
}
