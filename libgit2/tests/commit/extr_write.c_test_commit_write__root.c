
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_7__ {int name; int email; } ;
typedef TYPE_1__ git_signature ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_8__ {int name; int email; } ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int branch ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_oid (int const*,int *) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int commit ;
 int committer_email ;
 int committer_name ;
 int g_repo ;
 int * git__strdup (int ) ;
 int git_commit_create_v (int *,int ,char*,TYPE_1__*,TYPE_1__*,int *,int ,int *,int ) ;
 int git_commit_lookup (int *,int ,int *) ;
 int git_commit_message (int ) ;
 scalar_t__ git_commit_parentcount (int ) ;
 int git_object_free (int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (int ) ;
 int git_reference_lookup (int *,int ,char const*) ;
 int git_reference_symbolic_create (int *,int ,char*,char const*,int,int *) ;
 int git_reference_symbolic_target (int ) ;
 int * git_reference_target (int ) ;
 scalar_t__ git_reference_type (int ) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 TYPE_4__* git_reflog_entry_committer (int const*) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char const*) ;
 int git_signature_free (TYPE_1__*) ;
 int git_signature_new (TYPE_1__**,int ,int ,int,int) ;
 int git_tree_lookup (int **,int ,int *) ;
 int head ;
 int * head_old ;
 int root_commit_message ;
 int root_reflog_message ;
 int tree_id_str ;

void test_commit_write__root(void)
{
 git_oid tree_id, commit_id;
 const git_oid *branch_oid;
 git_signature *author, *committer;
 const char *branch_name = "refs/heads/root-commit-branch";
 git_tree *tree;
 git_reflog *log;
 const git_reflog_entry *entry;

 git_oid_fromstr(&tree_id, tree_id_str);
 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));


 cl_git_pass(git_signature_new(&committer, committer_name, committer_email, 123456789, 60));
 cl_git_pass(git_signature_new(&author, committer_name, committer_email, 987654321, 90));


 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_assert(git_reference_type(head) == GIT_REFERENCE_SYMBOLIC);
 head_old = git__strdup(git_reference_symbolic_target(head));
 cl_assert(head_old != ((void*)0));
 git_reference_free(head);

 cl_git_pass(git_reference_symbolic_create(&head, g_repo, "HEAD", branch_name, 1, ((void*)0)));

 cl_git_pass(git_commit_create_v(
  &commit_id,
  g_repo,
  "HEAD",
  author,
  committer,
  ((void*)0),
  root_commit_message,
  tree,
  0));

 git_object_free((git_object *)tree);
 git_signature_free(author);






 cl_git_pass(git_commit_lookup(&commit, g_repo, &commit_id));
 cl_assert(git_commit_parentcount(commit) == 0);
 cl_git_pass(git_reference_lookup(&branch, g_repo, branch_name));
 branch_oid = git_reference_target(branch);
 cl_assert_equal_oid(branch_oid, &commit_id);
 cl_assert_equal_s(root_commit_message, git_commit_message(commit));

 cl_git_pass(git_reflog_read(&log, g_repo, branch_name));
 cl_assert_equal_i(1, git_reflog_entrycount(log));
 entry = git_reflog_entry_byindex(log, 0);
 cl_assert_equal_s(committer->email, git_reflog_entry_committer(entry)->email);
 cl_assert_equal_s(committer->name, git_reflog_entry_committer(entry)->name);
 cl_assert_equal_s(root_reflog_message, git_reflog_entry_message(entry));

 git_signature_free(committer);
 git_reflog_free(log);
}
