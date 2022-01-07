
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_patch ;
typedef int git_diff ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int * expected_patch_text ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 size_t git_diff_num_deltas (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,size_t) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;

void test_diff_diffiter__iterate_and_generate_patch_text(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_diff *diff;
 size_t d, num_d;

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), ((void*)0)));

 num_d = git_diff_num_deltas(diff);
 cl_assert_equal_i(8, (int)num_d);

 for (d = 0; d < num_d; ++d) {
  git_patch *patch;
  git_buf buf = GIT_BUF_INIT;

  cl_git_pass(git_patch_from_diff(&patch, diff, d));
  cl_assert(patch != ((void*)0));

  cl_git_pass(git_patch_to_buf(&buf, patch));

  cl_assert_equal_s(expected_patch_text[d], buf.ptr);

  git_buf_dispose(&buf);
  git_patch_free(patch);
 }

 git_diff_free(diff);
}
