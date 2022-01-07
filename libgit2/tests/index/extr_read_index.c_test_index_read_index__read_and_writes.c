
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;
typedef int git_index ;


 int _index ;
 int _repo ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_open (int **,int ) ;
 int git_index_path (int ) ;
 int git_index_read_index (int ,int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write (int ) ;
 int git_index_write_tree_to (int *,int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_index_read_index__read_and_writes(void)
{
 git_oid tree_id, new_tree_id;
 git_tree *tree;
 git_index *tree_index, *new_index;

 cl_git_pass(git_oid_fromstr(&tree_id, "ae90f12eea699729ed24555e40b9fd669da12a12"));
 cl_git_pass(git_tree_lookup(&tree, _repo, &tree_id));
 cl_git_pass(git_index_new(&tree_index));
 cl_git_pass(git_index_read_tree(tree_index, tree));
 cl_git_pass(git_index_read_index(_index, tree_index));
 cl_git_pass(git_index_write(_index));

 cl_git_pass(git_index_open(&new_index, git_index_path(_index)));
 cl_git_pass(git_index_write_tree_to(&new_tree_id, new_index, _repo));

 cl_assert_equal_oid(&tree_id, &new_tree_id);

 git_tree_free(tree);
 git_index_free(tree_index);
 git_index_free(new_index);
}
