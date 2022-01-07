
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ merge_options; } ;
typedef TYPE_2__ git_rebase_options ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
typedef int git_annotated_commit ;


 int GIT_EMERGECONFLICT ;
 int GIT_MERGE_FAIL_ON_CONFLICT ;
 int GIT_MERGE_SKIP_REUC ;
 TYPE_2__ GIT_REBASE_OPTIONS_INIT ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,TYPE_2__*) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int repo ;

void test_rebase_merge__custom_merge_options(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_options rebase_options = GIT_REBASE_OPTIONS_INIT;
 git_rebase_operation *rebase_operation;

 rebase_options.merge_options.flags |=
  GIT_MERGE_FAIL_ON_CONFLICT |
  GIT_MERGE_SKIP_REUC;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/asparagus"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), &rebase_options));

 cl_git_fail_with(GIT_EMERGECONFLICT, git_rebase_next(&rebase_operation, rebase));

 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
