
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_object_free (int *) ;
 int git_reference_create (int **,int *,char*,int ,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 int git_repository_head (int **,int *) ;
 int git_revparse_single (int **,int *,char*) ;

void test_refs_revparse__issue_994(void)
{
 git_repository *repo;
 git_reference *head, *with_at;
 git_object *target;

 repo = cl_git_sandbox_init("testrepo.git");

 cl_assert_equal_i(GIT_ENOTFOUND,
  git_revparse_single(&target, repo, "origin/bim_with_3d@11296"));

 cl_assert_equal_i(GIT_ENOTFOUND,
  git_revparse_single(&target, repo, "refs/remotes/origin/bim_with_3d@11296"));


 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_create(
  &with_at,
  repo,
  "refs/remotes/origin/bim_with_3d@11296",
  git_reference_target(head),
  0,
  ((void*)0)));

 cl_git_pass(git_revparse_single(&target, repo, "origin/bim_with_3d@11296"));
 git_object_free(target);

 cl_git_pass(git_revparse_single(&target, repo, "refs/remotes/origin/bim_with_3d@11296"));
 git_object_free(target);

 git_reference_free(with_at);
 git_reference_free(head);
 cl_git_sandbox_cleanup();
}
