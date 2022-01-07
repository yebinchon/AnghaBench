
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_ITEROVER ;
 int GIT_SORT_TOPOLOGICAL ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int commit_head ;
 int * expected_str ;
 int git_oid_fromstr (int *,int ) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_new (int **,int *) ;
 int git_revwalk_next (int *,int *) ;
 int git_revwalk_push (int *,int *) ;
 int git_revwalk_simplify_first_parent (int *) ;
 int git_revwalk_sorting (int *,int ) ;

void test_revwalk_simplify__first_parent(void)
{
 git_repository *repo;
 git_revwalk *walk;
 git_oid id, expected[4];
 int i, error;

 for (i = 0; i < 4; i++) {
  git_oid_fromstr(&expected[i], expected_str[i]);
 }

 repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_revwalk_new(&walk, repo));

 git_oid_fromstr(&id, commit_head);
 cl_git_pass(git_revwalk_push(walk, &id));
 git_revwalk_sorting(walk, GIT_SORT_TOPOLOGICAL);
 git_revwalk_simplify_first_parent(walk);

 i = 0;
 while ((error = git_revwalk_next(&id, walk)) == 0) {
  cl_assert_equal_oid(&expected[i], &id);
  i++;
 }

 cl_assert_equal_i(i, 4);
 cl_assert_equal_i(error, GIT_ITEROVER);

 git_revwalk_free(walk);
}
