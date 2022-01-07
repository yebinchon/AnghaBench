
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_9__ {int time; int offset; } ;
struct TYPE_10__ {TYPE_1__ when; int email; int name; } ;
typedef TYPE_2__ git_signature ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int * commit ;
 int commit_message ;
 int committer_email ;
 int committer_name ;
 int g_repo ;
 TYPE_2__* git_commit_author (int *) ;
 TYPE_2__* git_commit_committer (int *) ;
 int git_commit_create_v (int *,int ,int *,TYPE_2__*,TYPE_2__*,int *,int ,int *,int,int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_message (int *) ;
 int git_object_free (int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_signature_free (TYPE_2__*) ;
 int git_signature_new (TYPE_2__**,int ,int ,int,int) ;
 int git_tree_lookup (int **,int ,int *) ;
 int parent_id_str ;
 int tree_id_str ;

void test_commit_write__from_memory(void)
{
   git_oid tree_id, parent_id, commit_id;
   git_signature *author, *committer;
   const git_signature *author1, *committer1;
   git_commit *parent;
   git_tree *tree;

   git_oid_fromstr(&tree_id, tree_id_str);
   cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));

   git_oid_fromstr(&parent_id, parent_id_str);
   cl_git_pass(git_commit_lookup(&parent, g_repo, &parent_id));


   cl_git_pass(git_signature_new(&committer, committer_name, committer_email, 123456789, 60));
   cl_git_pass(git_signature_new(&author, committer_name, committer_email, 987654321, 90));

   cl_git_pass(git_commit_create_v(
      &commit_id,
      g_repo,
      ((void*)0),
      author,
      committer,
      ((void*)0),
      commit_message,
      tree,
      1, parent));

   git_object_free((git_object *)parent);
   git_object_free((git_object *)tree);

   git_signature_free(committer);
   git_signature_free(author);

   cl_git_pass(git_commit_lookup(&commit, g_repo, &commit_id));


   author1 = git_commit_author(commit);
   cl_assert(author1 != ((void*)0));
   cl_assert_equal_s(committer_name, author1->name);
   cl_assert_equal_s(committer_email, author1->email);
   cl_assert(author1->when.time == 987654321);
   cl_assert(author1->when.offset == 90);

   committer1 = git_commit_committer(commit);
   cl_assert(committer1 != ((void*)0));
   cl_assert_equal_s(committer_name, committer1->name);
   cl_assert_equal_s(committer_email, committer1->email);
   cl_assert(committer1->when.time == 123456789);
   cl_assert(committer1->when.offset == 60);

   cl_assert_equal_s(commit_message, git_commit_message(commit));
}
