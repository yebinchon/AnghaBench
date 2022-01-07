
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_status_list ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
struct TYPE_5__ {int * ref_name; } ;
typedef TYPE_1__ git_annotated_commit ;


 int GIT_REPOSITORY_STATE_NONE ;
 int cl_assert (int const*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int ,int ) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_id (TYPE_1__*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 char* git_reference_symbolic_target (int *) ;
 int git_reference_target (int *) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_id_new (int const*) ;
 int git_reflog_entry_id_old (int const*) ;
 char* git_reflog_entry_message (int const*) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_repository_state (int ) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,int *) ;
 int repo ;

__attribute__((used)) static void ensure_aborted(
 git_annotated_commit *branch,
 git_annotated_commit *onto)
{
 git_reference *head_ref, *branch_ref = ((void*)0);
 git_status_list *statuslist;
 git_reflog *reflog;
 const git_reflog_entry *reflog_entry;

 cl_assert_equal_i(GIT_REPOSITORY_STATE_NONE, git_repository_state(repo));


 cl_git_pass(git_reference_lookup(&head_ref, repo, "HEAD"));

 if (branch->ref_name == ((void*)0))
  cl_assert_equal_oid(git_annotated_commit_id(branch), git_reference_target(head_ref));
 else {
  cl_assert_equal_s("refs/heads/beef", git_reference_symbolic_target(head_ref));
  cl_git_pass(git_reference_lookup(&branch_ref, repo, git_reference_symbolic_target(head_ref)));
  cl_assert_equal_oid(git_annotated_commit_id(branch), git_reference_target(branch_ref));
 }

 git_status_list_new(&statuslist, repo, ((void*)0));
 cl_assert_equal_i(0, git_status_list_entrycount(statuslist));
 git_status_list_free(statuslist);


 cl_git_pass(git_reflog_read(&reflog, repo, "HEAD"));

 cl_assert(reflog_entry = git_reflog_entry_byindex(reflog, 0));
 cl_assert_equal_oid(git_annotated_commit_id(onto), git_reflog_entry_id_old(reflog_entry));
 cl_assert_equal_oid(git_annotated_commit_id(branch), git_reflog_entry_id_new(reflog_entry));
 cl_assert_equal_s("rebase: aborting", git_reflog_entry_message(reflog_entry));

 git_reflog_free(reflog);
 git_reference_free(head_ref);
 git_reference_free(branch_ref);
}
