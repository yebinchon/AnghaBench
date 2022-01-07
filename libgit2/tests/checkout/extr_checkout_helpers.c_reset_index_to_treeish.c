
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_object ;
typedef int git_index ;


 int GIT_OBJECT_TREE ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 int * git_object_owner (int *) ;
 int git_object_peel (int **,int *,int ) ;
 int git_repository_index (int **,int *) ;

void reset_index_to_treeish(git_object *treeish)
{
 git_object *tree;
 git_index *index;
 git_repository *repo = git_object_owner(treeish);

 cl_git_pass(git_object_peel(&tree, treeish, GIT_OBJECT_TREE));

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_read_tree(index, (git_tree *)tree));
 cl_git_pass(git_index_write(index));

 git_object_free(tree);
 git_index_free(index);
}
