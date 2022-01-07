
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int) ;
 int commit ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_commit_nth_gen_ancestor (int **,int ,unsigned int) ;
 int git_oid_streq (int ,char const*) ;

__attribute__((used)) static void assert_nth_gen_parent(unsigned int gen, const char *expected_oid)
{
 git_commit *parent = ((void*)0);
 int error;

 error = git_commit_nth_gen_ancestor(&parent, commit, gen);

 if (expected_oid != ((void*)0)) {
  cl_assert_equal_i(0, error);
  cl_assert_equal_i(0, git_oid_streq(git_commit_id(parent), expected_oid));
 } else
  cl_assert_equal_i(GIT_ENOTFOUND, error);

 git_commit_free(parent);
}
