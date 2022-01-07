
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _stats ;
 int cl_git_sandbox_cleanup () ;
 int git_diff_stats_free (int *) ;

void test_diff_stats__cleanup(void)
{
 git_diff_stats_free(_stats); _stats = ((void*)0);
 cl_git_sandbox_cleanup();
}
