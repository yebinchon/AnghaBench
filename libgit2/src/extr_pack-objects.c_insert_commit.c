
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct walk_object {int seen; int id; } ;
typedef int git_tree ;
struct TYPE_5__ {int repo; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_commit ;


 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree_id (int *) ;
 int git_packbuilder_insert (TYPE_1__*,int *,int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int ) ;
 int insert_tree (TYPE_1__*,int *) ;

int insert_commit(git_packbuilder *pb, struct walk_object *obj)
{
 int error;
 git_commit *commit = ((void*)0);
 git_tree *tree = ((void*)0);

 obj->seen = 1;

 if ((error = git_packbuilder_insert(pb, &obj->id, ((void*)0))) < 0)
  return error;

 if ((error = git_commit_lookup(&commit, pb->repo, &obj->id)) < 0)
  return error;

 if ((error = git_tree_lookup(&tree, pb->repo, git_commit_tree_id(commit))) < 0)
  goto cleanup;

 if ((error = insert_tree(pb, tree)) < 0)
  goto cleanup;

cleanup:
 git_commit_free(commit);
 git_tree_free(tree);
 return error;
}
