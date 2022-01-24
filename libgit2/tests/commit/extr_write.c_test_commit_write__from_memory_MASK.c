#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_9__ {int time; int offset; } ;
struct TYPE_10__ {TYPE_1__ when; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * commit ; 
 int /*<<< orphan*/  commit_message ; 
 int /*<<< orphan*/  committer_email ; 
 int /*<<< orphan*/  committer_name ; 
 int /*<<< orphan*/  g_repo ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parent_id_str ; 
 int /*<<< orphan*/  tree_id_str ; 

void FUNC13(void)
{
   git_oid tree_id, parent_id, commit_id;
   git_signature *author, *committer;
   const git_signature *author1, *committer1;
   git_commit *parent;
   git_tree *tree;

   FUNC9(&tree_id, tree_id_str);
   FUNC2(FUNC12(&tree, g_repo, &tree_id));

   FUNC9(&parent_id, parent_id_str);
   FUNC2(FUNC6(&parent, g_repo, &parent_id));

   /* create signatures */
   FUNC2(FUNC11(&committer, committer_name, committer_email, 123456789, 60));
   FUNC2(FUNC11(&author, committer_name, committer_email, 987654321, 90));

   FUNC2(FUNC5(
      &commit_id, /* out id */
      g_repo,
      NULL, /* do not update the HEAD */
      author,
      committer,
      NULL,
      commit_message,
      tree,
      1, parent));

   FUNC8((git_object *)parent);
   FUNC8((git_object *)tree);

   FUNC10(committer);
   FUNC10(author);

   FUNC2(FUNC6(&commit, g_repo, &commit_id));

   /* Check attributes were set correctly */
   author1 = FUNC3(commit);
   FUNC0(author1 != NULL);
   FUNC1(committer_name, author1->name);
   FUNC1(committer_email, author1->email);
   FUNC0(author1->when.time == 987654321);
   FUNC0(author1->when.offset == 90);

   committer1 = FUNC4(commit);
   FUNC0(committer1 != NULL);
   FUNC1(committer_name, committer1->name);
   FUNC1(committer_email, committer1->email);
   FUNC0(committer1->when.time == 123456789);
   FUNC0(committer1->when.offset == 60);

   FUNC1(commit_message, FUNC7(commit));
}