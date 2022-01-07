
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int delta; int diff_opts; int repo; } ;
struct TYPE_10__ {size_t delta_index; TYPE_1__ base; int nfile; int ofile; TYPE_3__* diff; } ;
typedef TYPE_2__ git_patch_generated ;
struct TYPE_11__ {int opts; int deltas; int repo; } ;
typedef TYPE_3__ git_diff ;


 int git_diff_file_content__init_from_diff (int *,TYPE_3__*,int ,int) ;
 int git_vector_get (int *,size_t) ;
 int memset (TYPE_2__*,int ,int) ;
 int patch_generated_init_common (TYPE_2__*) ;
 int patch_generated_normalize_options (int *,int *) ;

__attribute__((used)) static int patch_generated_init(
 git_patch_generated *patch, git_diff *diff, size_t delta_index)
{
 int error = 0;

 memset(patch, 0, sizeof(*patch));

 patch->diff = diff;
 patch->base.repo = diff->repo;
 patch->base.delta = git_vector_get(&diff->deltas, delta_index);
 patch->delta_index = delta_index;

 if ((error = patch_generated_normalize_options(
   &patch->base.diff_opts, &diff->opts)) < 0 ||
  (error = git_diff_file_content__init_from_diff(
   &patch->ofile, diff, patch->base.delta, 1)) < 0 ||
  (error = git_diff_file_content__init_from_diff(
   &patch->nfile, diff, patch->base.delta, 0)) < 0)
  return error;

 patch_generated_init_common(patch);

 return 0;
}
