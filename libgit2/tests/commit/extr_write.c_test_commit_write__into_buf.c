
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_commit ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int committer_email ;
 int committer_name ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_commit_create_buffer (TYPE_1__*,int ,int *,int *,int *,int ,int *,int,int const**) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,int ,int ,int,int) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int parent_id_str ;
 int root_commit_message ;
 int tree_id_str ;

void test_commit_write__into_buf(void)
{
 git_oid tree_id;
 git_signature *author, *committer;
 git_tree *tree;
 git_commit *parent;
 git_oid parent_id;
 git_buf commit = GIT_BUF_INIT;

 git_oid_fromstr(&tree_id, tree_id_str);
 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));


 cl_git_pass(git_signature_new(&committer, committer_name, committer_email, 123456789, 60));
 cl_git_pass(git_signature_new(&author, committer_name, committer_email, 987654321, 90));

 git_oid_fromstr(&parent_id, parent_id_str);
 cl_git_pass(git_commit_lookup(&parent, g_repo, &parent_id));

 cl_git_pass(git_commit_create_buffer(&commit, g_repo, author, committer,
          ((void*)0), root_commit_message, tree, 1, (const git_commit **) &parent));

 cl_assert_equal_s(commit.ptr,
     "tree 1810dff58d8a660512d4832e740f692884338ccd\nparent 8496071c1b46c854b31185ea97743be6a8774479\nauthor Vicent Marti <vicent@github.com> 987654321 +0130\ncommitter Vicent Marti <vicent@github.com> 123456789 +0100\n\nThis is a root commit\n   This is a root commit and should be the only one in this branch\n");
 git_buf_dispose(&commit);
 git_tree_free(tree);
 git_commit_free(parent);
 git_signature_free(author);
 git_signature_free(committer);
}
