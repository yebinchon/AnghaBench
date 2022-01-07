
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_diff_delta ;
typedef int git_diff ;
struct TYPE_3__ {int files; int member_0; } ;
typedef TYPE_1__ diff_expects ;


 int cl_assert (int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int diff_file_cb (int const*,float,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int * git_diff_get_delta (int *,size_t) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 size_t git_diff_num_deltas (int *) ;

void test_diff_diffiter__iterate_files_1(void)
{
 git_repository *repo = cl_git_sandbox_init("attr");
 git_diff *diff;
 size_t d, num_d;
 diff_expects exp = { 0 };

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), ((void*)0)));

 num_d = git_diff_num_deltas(diff);

 for (d = 0; d < num_d; ++d) {
  const git_diff_delta *delta = git_diff_get_delta(diff, d);
  cl_assert(delta != ((void*)0));

  diff_file_cb(delta, (float)d / (float)num_d, &exp);
 }
 cl_assert_equal_sz(6, exp.files);

 git_diff_free(diff);
}
