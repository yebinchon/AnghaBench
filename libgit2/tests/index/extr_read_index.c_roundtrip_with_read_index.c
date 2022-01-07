
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;
typedef int git_index ;


 int _index ;
 int _repo ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_read_index (int ,int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write_tree (int *,int ) ;
 int git_oid_equal (int *,int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

__attribute__((used)) static bool roundtrip_with_read_index(const char *tree_idstr)
{
 git_oid tree_id, new_tree_id;
 git_tree *tree;
 git_index *tree_index;

 cl_git_pass(git_oid_fromstr(&tree_id, tree_idstr));
 cl_git_pass(git_tree_lookup(&tree, _repo, &tree_id));
 cl_git_pass(git_index_new(&tree_index));
 cl_git_pass(git_index_read_tree(tree_index, tree));
 cl_git_pass(git_index_read_index(_index, tree_index));
 cl_git_pass(git_index_write_tree(&new_tree_id, _index));

 git_tree_free(tree);
 git_index_free(tree_index);

 return git_oid_equal(&tree_id, &new_tree_id);
}
