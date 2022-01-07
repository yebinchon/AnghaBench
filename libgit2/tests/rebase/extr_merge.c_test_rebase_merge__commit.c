
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int cl_assert (int const*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_commit_author (int *) ;
 int git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_message (int *) ;
 int git_commit_message_encoding (int *) ;
 int git_commit_parent_id (int *,int ) ;
 int git_commit_parentcount (int *) ;
 int git_commit_tree_id (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_commit (int *,int *,int *,int *,int *,int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_rebase_next (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_id_new (int const*) ;
 int git_reflog_entry_id_old (int const*) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int const* git_signature__equal (int *,int ) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,char*,char*,int,scalar_t__) ;
 int repo ;
 int * signature ;

void test_rebase_merge__commit(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_operation *rebase_operation;
 git_oid commit_id, tree_id, parent_id;
 git_signature *author;
 git_commit *commit;
 git_reflog *reflog;
 const git_reflog_entry *reflog_entry;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/beef"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), ((void*)0)));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));
 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature,
  ((void*)0), ((void*)0)));

 cl_git_pass(git_commit_lookup(&commit, repo, &commit_id));

 git_oid_fromstr(&parent_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
 cl_assert_equal_i(1, git_commit_parentcount(commit));
 cl_assert_equal_oid(&parent_id, git_commit_parent_id(commit, 0));

 git_oid_fromstr(&tree_id, "4461379789c777d2a6c1f2ee0e9d6c86731b9992");
 cl_assert_equal_oid(&tree_id, git_commit_tree_id(commit));

 cl_assert_equal_s(((void*)0), git_commit_message_encoding(commit));
 cl_assert_equal_s("Modification 1 to beef\n", git_commit_message(commit));

 cl_git_pass(git_signature_new(&author,
  "Edward Thomson", "ethomson@edwardthomson.com", 1405621769, 0-(4*60)));
 cl_assert(git_signature__equal(author, git_commit_author(commit)));

 cl_assert(git_signature__equal(signature, git_commit_committer(commit)));


 cl_git_pass(git_reflog_read(&reflog, repo, "HEAD"));
 cl_assert(reflog_entry = git_reflog_entry_byindex(reflog, 0));
 cl_assert_equal_oid(&parent_id, git_reflog_entry_id_old(reflog_entry));
 cl_assert_equal_oid(&commit_id, git_reflog_entry_id_new(reflog_entry));
 cl_assert_equal_s("rebase: Modification 1 to beef", git_reflog_entry_message(reflog_entry));

 git_reflog_free(reflog);
 git_signature_free(author);
 git_commit_free(commit);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
