
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_8__ {int id; } ;
typedef TYPE_2__ git_rebase_operation ;
struct TYPE_7__ {int merge_options; } ;
struct TYPE_9__ {int * index; TYPE_1__ options; int repo; int * last_commit; int current; int operations; } ;
typedef TYPE_3__ git_rebase ;
typedef int git_index ;
typedef int git_commit ;


 int GIT_ERROR_REBASE ;
 TYPE_2__* git_array_get (int ,int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_parent (int **,int *,int ) ;
 unsigned int git_commit_parentcount (int *) ;
 int git_commit_tree (int **,int *) ;
 int git_error_set (int ,char*) ;
 int git_index_free (int *) ;
 int git_index_read_index (int *,int *) ;
 int git_merge_trees (int **,int ,int *,int *,int *,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int rebase_next_inmemory(
 git_rebase_operation **out,
 git_rebase *rebase)
{
 git_commit *current_commit = ((void*)0), *parent_commit = ((void*)0);
 git_tree *current_tree = ((void*)0), *head_tree = ((void*)0), *parent_tree = ((void*)0);
 git_rebase_operation *operation;
 git_index *index = ((void*)0);
 unsigned int parent_count;
 int error;

 *out = ((void*)0);

 operation = git_array_get(rebase->operations, rebase->current);

 if ((error = git_commit_lookup(&current_commit, rebase->repo, &operation->id)) < 0 ||
  (error = git_commit_tree(&current_tree, current_commit)) < 0)
  goto done;

 if ((parent_count = git_commit_parentcount(current_commit)) > 1) {
  git_error_set(GIT_ERROR_REBASE, "cannot rebase a merge commit");
  error = -1;
  goto done;
 } else if (parent_count) {
  if ((error = git_commit_parent(&parent_commit, current_commit, 0)) < 0 ||
   (error = git_commit_tree(&parent_tree, parent_commit)) < 0)
   goto done;
 }

 if ((error = git_commit_tree(&head_tree, rebase->last_commit)) < 0 ||
  (error = git_merge_trees(&index, rebase->repo, parent_tree, head_tree, current_tree, &rebase->options.merge_options)) < 0)
  goto done;

 if (!rebase->index) {
  rebase->index = index;
  index = ((void*)0);
 } else {
  if ((error = git_index_read_index(rebase->index, index)) < 0)
   goto done;
 }

 *out = operation;

done:
 git_commit_free(current_commit);
 git_commit_free(parent_commit);
 git_tree_free(current_tree);
 git_tree_free(head_tree);
 git_tree_free(parent_tree);
 git_index_free(index);

 return error;
}
