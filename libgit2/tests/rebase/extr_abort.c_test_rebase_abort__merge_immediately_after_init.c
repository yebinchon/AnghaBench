
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_rebase ;
typedef int git_annotated_commit ;


 int GIT_REPOSITORY_STATE_REBASE_MERGE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int ensure_aborted (int *,int *) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_rebase_abort (int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_repository_state (int ) ;
 int repo ;

void test_rebase_abort__merge_immediately_after_init(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *onto_ref;
 git_annotated_commit *branch_head, *onto_head;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/beef"));
 cl_git_pass(git_reference_lookup(&onto_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&onto_head, repo, onto_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, ((void*)0), onto_head, ((void*)0)));
 cl_assert_equal_i(GIT_REPOSITORY_STATE_REBASE_MERGE, git_repository_state(repo));

 cl_git_pass(git_rebase_abort(rebase));
 ensure_aborted(branch_head, onto_head);

 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(onto_head);

 git_reference_free(branch_ref);
 git_reference_free(onto_ref);
 git_rebase_free(rebase);
}
