
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_patch ;
typedef scalar_t__ (* git_diff_line_cb ) (TYPE_1__ const*,int const*,int const*,void*) ;
typedef int git_diff_line ;
typedef scalar_t__ (* git_diff_hunk_cb ) (TYPE_1__ const*,int const*,void*) ;
typedef int git_diff_hunk ;
typedef scalar_t__ (* git_diff_file_cb ) (TYPE_1__ const*,float,void*) ;
struct TYPE_9__ {scalar_t__ status; int flags; } ;
typedef TYPE_1__ git_diff_delta ;
typedef int git_diff_binary_cb ;
typedef int git_diff ;


 scalar_t__ GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_FLAG_BINARY ;
 int GIT_EUSER ;
 int GIT_UNUSED (int ) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 size_t git_diff_num_deltas (int *) ;
 int git_error_clear () ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,size_t) ;
 TYPE_1__* git_patch_get_delta (int *) ;
 int git_patch_get_hunk (int const**,size_t*,int *,size_t) ;
 int git_patch_get_line_in_hunk (int const**,int *,size_t,size_t) ;
 size_t git_patch_num_hunks (int *) ;

int diff_foreach_via_iterator(
 git_diff *diff,
 git_diff_file_cb file_cb,
 git_diff_binary_cb binary_cb,
 git_diff_hunk_cb hunk_cb,
 git_diff_line_cb line_cb,
 void *data)
{
 size_t d, num_d = git_diff_num_deltas(diff);

 GIT_UNUSED(binary_cb);

 for (d = 0; d < num_d; ++d) {
  git_patch *patch;
  const git_diff_delta *delta;
  size_t h, num_h;

  cl_git_pass(git_patch_from_diff(&patch, diff, d));
  cl_assert((delta = git_patch_get_delta(patch)) != ((void*)0));


  if (file_cb != ((void*)0) && file_cb(delta, (float)d / num_d, data) != 0) {
   git_patch_free(patch);
   goto abort;
  }


  if (!patch) {
   cl_assert(delta->status == GIT_DELTA_UNMODIFIED ||
       (delta->flags & GIT_DIFF_FLAG_BINARY) != 0);
   continue;
  }

  if (!hunk_cb && !line_cb) {
   git_patch_free(patch);
   continue;
  }

  num_h = git_patch_num_hunks(patch);

  for (h = 0; h < num_h; h++) {
   const git_diff_hunk *hunk;
   size_t l, num_l;

   cl_git_pass(git_patch_get_hunk(&hunk, &num_l, patch, h));

   if (hunk_cb && hunk_cb(delta, hunk, data) != 0) {
    git_patch_free(patch);
    goto abort;
   }

   for (l = 0; l < num_l; ++l) {
    const git_diff_line *line;

    cl_git_pass(git_patch_get_line_in_hunk(&line, patch, h, l));

    if (line_cb &&
     line_cb(delta, hunk, line, data) != 0) {
     git_patch_free(patch);
     goto abort;
    }
   }
  }

  git_patch_free(patch);
 }

 return 0;

abort:
 git_error_clear();
 return GIT_EUSER;
}
