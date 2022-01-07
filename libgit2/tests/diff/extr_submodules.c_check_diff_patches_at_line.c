
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_3__ {scalar_t__ status; } ;
typedef TYPE_1__ git_diff_delta ;
typedef int git_diff ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 scalar_t__ GIT_DELTA_UNMODIFIED ;
 scalar_t__ GIT_DELTA_UNTRACKED ;
 int cl_assert (int ) ;
 int cl_assert_at_line (int,char const*,int) ;
 int cl_git_pass (int ) ;
 int clar__assert_equal (char const*,int,char*,int,char*,char const*,int ) ;
 int get_buf_ptr (int *) ;
 int git_buf_dispose (int *) ;
 size_t git_diff_num_deltas (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,size_t) ;
 TYPE_1__* git_patch_get_delta (int *) ;
 int git_patch_to_buf (int *,int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void check_diff_patches_at_line(
 git_diff *diff, const char **expected, const char *file, int line)
{
 const git_diff_delta *delta;
 git_patch *patch = ((void*)0);
 size_t d, num_d = git_diff_num_deltas(diff);
 git_buf buf = GIT_BUF_INIT;

 for (d = 0; d < num_d; ++d, git_patch_free(patch)) {
  cl_git_pass(git_patch_from_diff(&patch, diff, d));
  cl_assert((delta = git_patch_get_delta(patch)) != ((void*)0));

  if (delta->status == GIT_DELTA_UNMODIFIED) {
   cl_assert_at_line(expected[d] == ((void*)0), file, line);
   continue;
  }

  if (expected[d] && !strcmp(expected[d], "<SKIP>"))
   continue;
  if (expected[d] && !strcmp(expected[d], "<UNTRACKED>")) {
   cl_assert_at_line(delta->status == GIT_DELTA_UNTRACKED, file, line);
   continue;
  }
  if (expected[d] && !strcmp(expected[d], "<END>")) {
   cl_git_pass(git_patch_to_buf(&buf, patch));
   cl_assert_at_line(!strcmp(expected[d], "<END>"), file, line);
  }

  cl_git_pass(git_patch_to_buf(&buf, patch));

  clar__assert_equal(
   file, line, "expected diff did not match actual diff", 1,
   "%s", expected[d], get_buf_ptr(&buf));
  git_buf_dispose(&buf);
 }

 cl_assert_at_line(expected[d] && !strcmp(expected[d], "<END>"), file, line);
}
