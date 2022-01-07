
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int base; int flags; } ;
typedef TYPE_1__ git_patch_generated ;
typedef int git_diff ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_PATCH_GENERATED_ALLOCATED ;
 int GIT_REFCOUNT_INC (int *) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int patch_generated_init (TYPE_1__*,int *,size_t) ;

__attribute__((used)) static int patch_generated_alloc_from_diff(
 git_patch_generated **out, git_diff *diff, size_t delta_index)
{
 int error;
 git_patch_generated *patch = git__calloc(1, sizeof(git_patch_generated));
 GIT_ERROR_CHECK_ALLOC(patch);

 if (!(error = patch_generated_init(patch, diff, delta_index))) {
  patch->flags |= GIT_PATCH_GENERATED_ALLOCATED;
  GIT_REFCOUNT_INC(&patch->base);
 } else {
  git__free(patch);
  patch = ((void*)0);
 }

 *out = patch;
 return error;
}
