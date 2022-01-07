
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int FETCH_HEAD_EXPLICIT_DATA ;
 int GIT_BRANCH_ALL ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_pass (int ) ;
 size_t count_references () ;
 int fetchhead_test_clone () ;
 int fetchhead_test_fetch (char*,int ) ;
 int g_repo ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;

void test_online_fetchhead__explicit_dst_refspec_creates_branch(void)
{
 git_reference *ref;
 size_t refs;

 fetchhead_test_clone();
 refs = count_references();
 fetchhead_test_fetch("refs/heads/first-merge:refs/heads/explicit-refspec", FETCH_HEAD_EXPLICIT_DATA);

 cl_git_pass(git_branch_lookup(&ref, g_repo, "explicit-refspec", GIT_BRANCH_ALL));
 cl_assert_equal_i(refs + 1, count_references());

 git_reference_free(ref);
}
