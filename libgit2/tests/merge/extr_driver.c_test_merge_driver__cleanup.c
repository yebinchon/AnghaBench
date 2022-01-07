
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_index_free (int ) ;
 int repo_index ;
 int test_drivers_unregister () ;

void test_merge_driver__cleanup(void)
{
 test_drivers_unregister();

    git_index_free(repo_index);
 cl_git_sandbox_cleanup();
}
