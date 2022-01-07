
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_diff ;
typedef int git_buf ;


 size_t git_diff_num_deltas (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,size_t) ;
 int git_patch_to_buf (int *,int *) ;

int git_diff_format_email__append_patches_tobuf(
 git_buf *out,
 git_diff *diff)
{
 size_t i, deltas;
 int error = 0;

 deltas = git_diff_num_deltas(diff);

 for (i = 0; i < deltas; ++i) {
  git_patch *patch = ((void*)0);

  if ((error = git_patch_from_diff(&patch, diff, i)) >= 0)
   error = git_patch_to_buf(out, patch);

  git_patch_free(patch);

  if (error < 0)
   break;
 }

 return error;
}
