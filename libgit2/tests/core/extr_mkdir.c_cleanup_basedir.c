
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_EMPTY_HIERARCHY ;
 int GIT_UNUSED (void*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;

__attribute__((used)) static void cleanup_basedir(void *ref)
{
 GIT_UNUSED(ref);
 git_futils_rmdir_r("base", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
}
