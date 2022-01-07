
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_commit {int dummy; } ;
typedef int git_tree ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_HEAD_FILE ;
 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,int ,int ,int *,int ,int *,char*) ;
 int g_repo ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char*,int *,int,struct git_commit const**) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_oid_tostr_s (int *) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_tree_free (int *) ;

void test_refs_reflog_messages__show_merge_for_merge_commits(void)
{
 git_oid b1_oid;
 git_oid b2_oid;
 git_oid merge_commit_oid;
 git_commit *b1_commit;
 git_commit *b2_commit;
 git_signature *s;
 git_commit *parent_commits[2];
 git_tree *tree;

 cl_git_pass(git_signature_now(&s, "alice", "alice@example.com"));

 cl_git_pass(git_reference_name_to_id(&b1_oid, g_repo, "HEAD"));
 cl_git_pass(git_reference_name_to_id(&b2_oid, g_repo, "refs/heads/test"));

 cl_git_pass(git_commit_lookup(&b1_commit, g_repo, &b1_oid));
 cl_git_pass(git_commit_lookup(&b2_commit, g_repo, &b2_oid));

 parent_commits[0] = b1_commit;
 parent_commits[1] = b2_commit;

 cl_git_pass(git_commit_tree(&tree, b1_commit));

 cl_git_pass(git_commit_create(&merge_commit_oid,
  g_repo, "HEAD", s, s, ((void*)0),
  "Merge commit", tree,
  2, (const struct git_commit **) parent_commits));

 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  ((void*)0),
  git_oid_tostr_s(&merge_commit_oid),
  ((void*)0), "commit (merge): Merge commit");

 git_tree_free(tree);
 git_commit_free(b1_commit);
 git_commit_free(b2_commit);
 git_signature_free(s);
}
