
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int const git_patch ;
struct TYPE_4__ {int context_lines; int interhunk_lines; int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff_hunk ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int const*) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 size_t git_diff_num_deltas (int *) ;
 int git_patch_free (int const*) ;
 int git_patch_from_diff (int const**,int *,size_t) ;
 int git_patch_get_hunk (int const**,int *,int const*,size_t) ;
 size_t git_patch_num_hunks (int const*) ;

void test_diff_diffiter__iterate_files_and_hunks(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 size_t d, num_d;
 int file_count = 0, hunk_count = 0;

 opts.context_lines = 3;
 opts.interhunk_lines = 1;
 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts));

 num_d = git_diff_num_deltas(diff);

 for (d = 0; d < num_d; ++d) {
  git_patch *patch;
  size_t h, num_h;

  cl_git_pass(git_patch_from_diff(&patch, diff, d));
  cl_assert(patch);

  file_count++;

  num_h = git_patch_num_hunks(patch);

  for (h = 0; h < num_h; h++) {
   const git_diff_hunk *hunk;

   cl_git_pass(git_patch_get_hunk(&hunk, ((void*)0), patch, h));
   cl_assert(hunk);

   hunk_count++;
  }

  git_patch_free(patch);
 }

 cl_assert_equal_i(13, file_count);
 cl_assert_equal_i(8, hunk_count);

 git_diff_free(diff);
}
