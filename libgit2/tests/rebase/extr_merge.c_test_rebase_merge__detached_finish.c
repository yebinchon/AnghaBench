
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_annotated_commit ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int GIT_REFERENCE_DIRECT ;
 int GIT_REPOSITORY_STATE_NONE ;
 int cl_assert (int const*) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int * git_annotated_commit_id (int *) ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_rebase_commit (int *,int *,int *,int ,int *,int *) ;
 int git_rebase_finish (int *,int ) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_type (int *) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_id_new (int const*) ;
 int git_reflog_entry_id_old (int const*) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_repository_set_head_detached_from_annotated (int ,int *) ;
 int git_repository_state (int ) ;
 int repo ;
 int signature ;

void test_rebase_merge__detached_finish(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref, *head_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_operation *rebase_operation;
 git_oid commit_id;
 git_reflog *reflog;
 const git_reflog_entry *reflog_entry;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 int error;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/gravy"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/veal"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_repository_set_head_detached_from_annotated(repo, branch_head));
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 git_checkout_head(repo, &opts);

 cl_git_pass(git_rebase_init(&rebase, repo, ((void*)0), upstream_head, ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_fail(error = git_rebase_next(&rebase_operation, rebase));
 cl_assert_equal_i(GIT_ITEROVER, error);

 cl_git_pass(git_rebase_finish(rebase, signature));

 cl_assert_equal_i(GIT_REPOSITORY_STATE_NONE, git_repository_state(repo));

 cl_git_pass(git_reference_lookup(&head_ref, repo, "HEAD"));
 cl_assert_equal_i(GIT_REFERENCE_DIRECT, git_reference_type(head_ref));


 cl_git_pass(git_reflog_read(&reflog, repo, "HEAD"));
 cl_assert(reflog_entry = git_reflog_entry_byindex(reflog, 0));
 cl_assert_equal_oid(git_annotated_commit_id(upstream_head), git_reflog_entry_id_old(reflog_entry));
 cl_assert_equal_oid(&commit_id, git_reflog_entry_id_new(reflog_entry));

 git_reflog_free(reflog);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(head_ref);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
