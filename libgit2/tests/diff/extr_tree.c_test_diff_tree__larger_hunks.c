
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const git_patch ;
typedef int git_diff_line ;
typedef int git_diff_hunk ;
struct TYPE_3__ {int context_lines; scalar_t__ interhunk_lines; } ;


 int * a ;
 int * b ;
 int cl_assert (int const*) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff ;
 int g_repo ;
 size_t git_diff_num_deltas (int ) ;
 int git_diff_tree_to_tree (int *,int ,int *,int *,TYPE_1__*) ;
 int git_patch_free (int const*) ;
 int git_patch_from_diff (int const**,int ,size_t) ;
 int git_patch_get_hunk (int const**,size_t*,int const*,size_t) ;
 int git_patch_get_line_in_hunk (int const**,int const*,size_t,size_t) ;
 size_t git_patch_num_hunks (int const*) ;
 TYPE_1__ opts ;
 void* resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_tree__larger_hunks(void)
{
 const char *a_commit = "d70d245ed97ed2aa596dd1af6536e4bfdb047b69";
 const char *b_commit = "7a9e0b02e63179929fed24f0a3e0f19168114d10";
 size_t d, num_d, h, num_h, l, num_l;
 git_patch *patch;
 const git_diff_hunk *hunk;
 const git_diff_line *line;

 g_repo = cl_git_sandbox_init("diff");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, a_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, b_commit)) != ((void*)0));

 opts.context_lines = 1;
 opts.interhunk_lines = 0;

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));

 num_d = git_diff_num_deltas(diff);
 for (d = 0; d < num_d; ++d) {
  cl_git_pass(git_patch_from_diff(&patch, diff, d));
  cl_assert(patch);

  num_h = git_patch_num_hunks(patch);
  for (h = 0; h < num_h; h++) {
   cl_git_pass(git_patch_get_hunk(&hunk, &num_l, patch, h));

   for (l = 0; l < num_l; ++l) {
    cl_git_pass(git_patch_get_line_in_hunk(&line, patch, h, l));
    cl_assert(line);
   }

   cl_git_fail(git_patch_get_line_in_hunk(&line, patch, h, num_l));
  }

  cl_git_fail(git_patch_get_hunk(&hunk, &num_l, patch, num_h));

  git_patch_free(patch);
 }

 cl_git_fail(git_patch_from_diff(&patch, diff, num_d));

 cl_assert_equal_i(2, (int)num_d);
}
