
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_7__ {int checkout_options; } ;
typedef TYPE_1__ git_rebase_options ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
struct TYPE_8__ {int* progress_payload; int progress_cb; } ;
typedef TYPE_2__ git_checkout_options ;
typedef int git_annotated_commit ;


 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 TYPE_1__ GIT_REBASE_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_rebase_abort (int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,TYPE_1__*) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int rebase_checkout_progress_cb ;
 int repo ;

void test_rebase_merge__custom_checkout_options(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_options rebase_options = GIT_REBASE_OPTIONS_INIT;
 git_checkout_options checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
 git_rebase_operation *rebase_operation;
 int called = 0;

 checkout_options.progress_cb = rebase_checkout_progress_cb;
 checkout_options.progress_payload = &called;

 memcpy(&rebase_options.checkout_options, &checkout_options,
  sizeof(git_checkout_options));

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/beef"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 called = 0;
 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), &rebase_options));
 cl_assert_equal_i(1, called);

 called = 0;
 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_assert_equal_i(1, called);

 called = 0;
 cl_git_pass(git_rebase_abort(rebase));
 cl_assert_equal_i(1, called);

 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
