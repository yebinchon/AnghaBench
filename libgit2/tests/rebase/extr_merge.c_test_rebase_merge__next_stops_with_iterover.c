
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_annotated_commit ;


 int GIT_ITEROVER ;
 int cl_assert_equal_file (char*,int,char*) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_rebase_commit (int *,int *,int *,int ,int *,int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int repo ;
 int signature ;

void test_rebase_merge__next_stops_with_iterover(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_operation *rebase_operation;
 git_oid commit_id;
 int error;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/beef"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_fail(error = git_rebase_next(&rebase_operation, rebase));
 cl_assert_equal_i(GIT_ITEROVER, error);

 cl_assert_equal_file("5\n", 2, "rebase/.git/rebase-merge/end");
 cl_assert_equal_file("5\n", 2, "rebase/.git/rebase-merge/msgnum");

 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
