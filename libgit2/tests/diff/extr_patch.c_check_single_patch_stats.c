
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_patch ;
struct TYPE_9__ {scalar_t__ origin; int old_lineno; int new_lineno; } ;
typedef TYPE_1__ git_diff_line ;
struct TYPE_10__ {scalar_t__ status; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_diff ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_DELTA_MODIFIED ;
 scalar_t__ GIT_DIFF_LINE_ADD_EOFNL ;
 scalar_t__ GIT_DIFF_LINE_CONTEXT_EOFNL ;
 scalar_t__ GIT_DIFF_LINE_DEL_EOFNL ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_assert_equal_sz (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 TYPE_2__* git_patch_get_delta (int *) ;
 int git_patch_get_line_in_hunk (TYPE_1__ const**,int *,size_t,size_t) ;
 int git_patch_line_stats (size_t*,size_t*,size_t*,int *) ;
 scalar_t__ git_patch_num_hunks (int *) ;
 size_t git_patch_num_lines_in_hunk (int *,size_t) ;
 size_t git_patch_size (int *,int,int,int) ;
 int git_patch_to_buf (TYPE_3__*,int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void check_single_patch_stats(
 git_repository *repo, size_t hunks,
 size_t adds, size_t dels, size_t ctxt, size_t *sizes,
 const char *expected)
{
 git_diff *diff;
 git_patch *patch;
 const git_diff_delta *delta;
 size_t actual_ctxt, actual_adds, actual_dels;

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), ((void*)0)));

 cl_assert_equal_i(1, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_assert((delta = git_patch_get_delta(patch)) != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_MODIFIED, (int)delta->status);

 cl_assert_equal_i((int)hunks, (int)git_patch_num_hunks(patch));

 cl_git_pass( git_patch_line_stats(
  &actual_ctxt, &actual_adds, &actual_dels, patch) );

 cl_assert_equal_sz(ctxt, actual_ctxt);
 cl_assert_equal_sz(adds, actual_adds);
 cl_assert_equal_sz(dels, actual_dels);

 if (expected != ((void*)0)) {
  git_buf buf = GIT_BUF_INIT;
  cl_git_pass(git_patch_to_buf(&buf, patch));
  cl_assert_equal_s(expected, buf.ptr);
  git_buf_dispose(&buf);

  cl_assert_equal_sz(
   strlen(expected), git_patch_size(patch, 1, 1, 1));
 }

 if (sizes) {
  if (sizes[0])
   cl_assert_equal_sz(sizes[0], git_patch_size(patch, 0, 0, 0));
  if (sizes[1])
   cl_assert_equal_sz(sizes[1], git_patch_size(patch, 1, 0, 0));
  if (sizes[2])
   cl_assert_equal_sz(sizes[2], git_patch_size(patch, 1, 1, 0));
 }


 for (; hunks > 0; --hunks) {
  size_t i, max_i;
  const git_diff_line *line;
  int last_new_lineno = -1, last_old_lineno = -1;

  max_i = git_patch_num_lines_in_hunk(patch, hunks - 1);

  for (i = 0; i < max_i; ++i) {
   int expected = 1;

   cl_git_pass(
    git_patch_get_line_in_hunk(&line, patch, hunks - 1, i));

   if (line->origin == GIT_DIFF_LINE_ADD_EOFNL ||
    line->origin == GIT_DIFF_LINE_DEL_EOFNL ||
    line->origin == GIT_DIFF_LINE_CONTEXT_EOFNL)
    expected = 0;

   if (line->old_lineno >= 0) {
    if (last_old_lineno >= 0)
     cl_assert_equal_i(
      expected, line->old_lineno - last_old_lineno);
    last_old_lineno = line->old_lineno;
   }

   if (line->new_lineno >= 0) {
    if (last_new_lineno >= 0)
     cl_assert_equal_i(
      expected, line->new_lineno - last_new_lineno);
    last_new_lineno = line->new_lineno;
   }
  }
 }

 git_patch_free(patch);
 git_diff_free(diff);
}
