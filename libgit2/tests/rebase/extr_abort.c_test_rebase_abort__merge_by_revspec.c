
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_rebase ;
typedef int git_annotated_commit ;


 int GIT_REPOSITORY_STATE_REBASE_MERGE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_revspec (int **,int ,char*) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_repository_state (int ) ;
 int repo ;
 int test_abort (int *,int *) ;

void test_rebase_abort__merge_by_revspec(void)
{
 git_rebase *rebase;
 git_annotated_commit *branch_head, *onto_head;

 cl_git_pass(git_annotated_commit_from_revspec(&branch_head, repo, "b146bd7"));
 cl_git_pass(git_annotated_commit_from_revspec(&onto_head, repo, "efad0b1"));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, ((void*)0), onto_head, ((void*)0)));
 cl_assert_equal_i(GIT_REPOSITORY_STATE_REBASE_MERGE, git_repository_state(repo));

 test_abort(branch_head, onto_head);

 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(onto_head);

 git_rebase_free(rebase);
}
