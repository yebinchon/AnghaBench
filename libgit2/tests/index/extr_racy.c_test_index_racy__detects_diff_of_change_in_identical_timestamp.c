
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;
typedef int git_diff ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int git_diff_num_deltas (int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int setup_race () ;

void test_index_racy__detects_diff_of_change_in_identical_timestamp(void)
{
 git_index *index;
 git_diff *diff;

 cl_git_pass(git_repository_index__weakptr(&index, g_repo));

 setup_race();

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, ((void*)0)));
 cl_assert_equal_i(1, git_diff_num_deltas(diff));

 git_diff_free(diff);
}
