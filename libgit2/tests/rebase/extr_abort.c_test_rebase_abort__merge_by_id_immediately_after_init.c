
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_rebase ;
typedef int git_oid ;
typedef int git_annotated_commit ;


 int GIT_REPOSITORY_STATE_REBASE_MERGE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int ensure_aborted (int *,int *) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_abort (int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_repository_state (int ) ;
 int repo ;

void test_rebase_abort__merge_by_id_immediately_after_init(void)
{
 git_rebase *rebase;
 git_oid branch_id, onto_id;
 git_annotated_commit *branch_head, *onto_head;

 cl_git_pass(git_oid_fromstr(&branch_id, "b146bd7608eac53d9bf9e1a6963543588b555c64"));
 cl_git_pass(git_oid_fromstr(&onto_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00"));

 cl_git_pass(git_annotated_commit_lookup(&branch_head, repo, &branch_id));
 cl_git_pass(git_annotated_commit_lookup(&onto_head, repo, &onto_id));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, ((void*)0), onto_head, ((void*)0)));
 cl_assert_equal_i(GIT_REPOSITORY_STATE_REBASE_MERGE, git_repository_state(repo));

 cl_git_pass(git_rebase_abort(rebase));
 ensure_aborted(branch_head, onto_head);

 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(onto_head);

 git_rebase_free(rebase);
}
