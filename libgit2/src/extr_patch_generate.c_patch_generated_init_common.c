
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int free_fn; } ;
struct TYPE_6__ {scalar_t__ diff; int flags; TYPE_1__ base; } ;
typedef TYPE_2__ git_patch_generated ;


 int GIT_PATCH_GENERATED_INITIALIZED ;
 int git_diff_addref (scalar_t__) ;
 int patch_generated_free ;
 int patch_generated_update_binary (TYPE_2__*) ;

__attribute__((used)) static void patch_generated_init_common(git_patch_generated *patch)
{
 patch->base.free_fn = patch_generated_free;

 patch_generated_update_binary(patch);

 patch->flags |= GIT_PATCH_GENERATED_INITIALIZED;

 if (patch->diff)
  git_diff_addref(patch->diff);
}
