
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_diff_delta ;
typedef int git_diff ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_diff_free (int *) ;
 int * git_diff_get_delta (int *,size_t) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 size_t git_diff_num_deltas (int *) ;

void test_diff_diffiter__iterate_files_2(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_diff *diff;
 size_t d, num_d;
 int count = 0;

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), ((void*)0)));

 num_d = git_diff_num_deltas(diff);
 cl_assert_equal_i(8, (int)num_d);

 for (d = 0; d < num_d; ++d) {
  const git_diff_delta *delta = git_diff_get_delta(diff, d);
  cl_assert(delta != ((void*)0));
  count++;
 }
 cl_assert_equal_i(8, count);

 git_diff_free(diff);
}
