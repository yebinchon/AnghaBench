
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
typedef int git_repository ;
typedef int git_index ;
typedef int git_diff_options ;
typedef int git_diff ;
struct TYPE_2__ {int status; } ;





 int GIT_DIFF_OPTIONS_INIT ;
 int _a ;
 int _b ;
 int * _counts ;
 int _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_atomic_add (int *,int ) ;
 int git_atomic_inc (int *) ;
 int git_diff_free (int *) ;
 TYPE_1__* git_diff_get_delta (int *,size_t) ;
 int git_diff_index_to_workdir (int **,int *,int *,int *) ;
 size_t git_diff_num_deltas (int *) ;
 int git_diff_tree_to_index (int **,int *,int ,int *,int *) ;
 int git_error_clear () ;
 int git_index_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int ) ;

__attribute__((used)) static void *run_index_diffs(void *arg)
{
 int thread = *(int *)arg;
 git_repository *repo;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 size_t i;
 int exp[4] = { 0, 0, 0, 0 };

 cl_git_pass(git_repository_open(&repo, git_repository_path(_repo)));

 switch (thread & 0x03) {
 case 0: ;
  cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts));
  break;
 case 1: ;
  cl_git_pass(git_diff_tree_to_index(&diff, repo, _a, ((void*)0), &opts));
  break;
 case 2: ;
  cl_git_pass(git_diff_tree_to_index(&diff, repo, _b, ((void*)0), &opts));
  break;
 case 3: ;
  {
   git_index *idx;
   cl_git_pass(git_repository_index(&idx, repo));
   cl_git_pass(git_diff_index_to_workdir(&diff, repo, idx, &opts));
   git_index_free(idx);
   break;
  }
 }



 i = git_diff_num_deltas(diff);
 git_atomic_add(&_counts[0], (int32_t)i);
 exp[0] = (int)i;

 while (i > 0) {
  switch (git_diff_get_delta(diff, --i)->status) {
  case 128: exp[1]++; git_atomic_inc(&_counts[1]); break;
  case 130: exp[2]++; git_atomic_inc(&_counts[2]); break;
  case 129: exp[3]++; git_atomic_inc(&_counts[3]); break;
  default: break;
  }
 }

 switch (thread & 0x03) {
 case 0: case 3:
  cl_assert_equal_i(8, exp[0]); cl_assert_equal_i(4, exp[1]);
  cl_assert_equal_i(0, exp[2]); cl_assert_equal_i(4, exp[3]);
  break;
 case 1:
  cl_assert_equal_i(12, exp[0]); cl_assert_equal_i(3, exp[1]);
  cl_assert_equal_i(7, exp[2]); cl_assert_equal_i(2, exp[3]);
  break;
 case 2:
  cl_assert_equal_i(8, exp[0]); cl_assert_equal_i(3, exp[1]);
  cl_assert_equal_i(3, exp[2]); cl_assert_equal_i(2, exp[3]);
  break;
 }

 git_diff_free(diff);
 git_repository_free(repo);
 git_error_clear();

 return arg;
}
