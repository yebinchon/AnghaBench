
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_RMDIR_EMPTY_HIERARCHY ;
 int git__free (int *) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int p_umask (int ) ;

__attribute__((used)) static void cleanup_chmod_root(void *ref)
{
 mode_t *mode = ref;

 if (mode != ((void*)0)) {
  (void)p_umask(*mode);
  git__free(mode);
 }

 git_futils_rmdir_r("r", ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY);
}
