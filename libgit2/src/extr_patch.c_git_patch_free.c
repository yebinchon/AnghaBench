
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int git_patch__free ;

void git_patch_free(git_patch *patch)
{
 if (patch)
  GIT_REFCOUNT_DEC(patch, git_patch__free);
}
