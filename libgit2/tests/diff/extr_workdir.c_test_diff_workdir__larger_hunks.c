
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
typedef int const git_patch ;
struct TYPE_5__ {int context_lines; scalar_t__ interhunk_lines; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int const*) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 size_t git_diff_num_deltas (int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_patch_free (int const*) ;
 int git_patch_from_diff (int const**,int *,size_t) ;
 int git_patch_get_hunk (int const**,size_t*,int const*,size_t) ;
 int git_patch_get_line_in_hunk (int const**,int const*,size_t,size_t) ;
 size_t git_patch_num_hunks (int const*) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_workdir__larger_hunks(void)
{
 const char *a_commit = "d70d245ed97ed2aa596dd1af6536e4bfdb047b69";
 const char *b_commit = "7a9e0b02e63179929fed24f0a3e0f19168114d10";
 git_tree *a, *b;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 size_t i, d, num_d, h, num_h, l, num_l;

 g_repo = cl_git_sandbox_init("diff");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, a_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, b_commit)) != ((void*)0));

 opts.context_lines = 1;
 opts.interhunk_lines = 0;

 for (i = 0; i <= 2; ++i) {
  git_diff *diff = ((void*)0);
  git_patch *patch;
  const git_diff_hunk *hunk;
  const git_diff_line *line;


  switch (i) {
  case 0:
   cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
   break;
  case 1:
   cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, a, &opts));
   break;
  case 2:
   cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, b, &opts));
   break;
  }

  num_d = git_diff_num_deltas(diff);
  cl_assert_equal_i(2, (int)num_d);

  for (d = 0; d < num_d; ++d) {
   cl_git_pass(git_patch_from_diff(&patch, diff, d));
   cl_assert(patch);

   num_h = git_patch_num_hunks(patch);
   for (h = 0; h < num_h; h++) {
    cl_git_pass(git_patch_get_hunk(&hunk, &num_l, patch, h));

    for (l = 0; l < num_l; ++l) {
     cl_git_pass(
      git_patch_get_line_in_hunk(&line, patch, h, l));
     cl_assert(line);
    }


    cl_git_fail(
     git_patch_get_line_in_hunk(&line, patch, h, num_l));
   }


   cl_git_fail(git_patch_get_hunk(&hunk, &num_l, patch, num_h));

   git_patch_free(patch);
  }

  git_diff_free(diff);
 }

 git_tree_free(a);
 git_tree_free(b);
}
