
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int * git_tree_entry_byname (int *,char*) ;
 int git_tree_entry_filemode (int const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int git_treebuilder_free (int *) ;
 int * git_treebuilder_get (int *,char*) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int git_treebuilder_write (int *,int *) ;
 int repo ;
 int tree_oid ;

void test_object_tree_attributes__normalize_attributes_when_creating_a_tree_from_an_existing_one(void)
{
 git_treebuilder *builder;
 git_oid tid, tid2;
 git_tree *tree;
 const git_tree_entry *entry;

 cl_git_pass(git_oid_fromstr(&tid, tree_oid));
 cl_git_pass(git_tree_lookup(&tree, repo, &tid));

 cl_git_pass(git_treebuilder_new(&builder, repo, tree));

 entry = git_treebuilder_get(builder, "old_mode.txt");
 cl_assert(entry != ((void*)0));
 cl_assert_equal_i(
  GIT_FILEMODE_BLOB,
  git_tree_entry_filemode(entry));

 cl_git_pass(git_treebuilder_write(&tid2, builder));
 git_treebuilder_free(builder);
 git_tree_free(tree);

 cl_git_pass(git_tree_lookup(&tree, repo, &tid2));
 entry = git_tree_entry_byname(tree, "old_mode.txt");
 cl_assert(entry != ((void*)0));
 cl_assert_equal_i(
  GIT_FILEMODE_BLOB,
  git_tree_entry_filemode(entry));

 git_tree_free(tree);
}
