
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _check_counts ;
 int _repo ;
 int cl_git_sandbox_init (char*) ;
 int free_trees ;
 int run_in_parallel (int,int,int ,int ,int ) ;
 int run_index_diffs ;
 int setup_trees ;

void test_threads_diff__concurrent_diffs(void)
{
 _repo = cl_git_sandbox_init("status");
 _check_counts = 1;

 run_in_parallel(
  5, 32, run_index_diffs, setup_trees, free_trees);
}
