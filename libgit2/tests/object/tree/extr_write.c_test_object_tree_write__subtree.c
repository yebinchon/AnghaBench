
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_TREE ;
 int blob_oid ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int first_tree ;
 int g_repo ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int git_treebuilder_write (int *,int *) ;
 int second_tree ;
 int third_tree ;

void test_object_tree_write__subtree(void)
{

 git_treebuilder *builder;
 git_tree *tree;
 git_oid id, bid, subtree_id, id2, id3;
 git_oid id_hiearar;

 git_oid_fromstr(&id, first_tree);
 git_oid_fromstr(&id2, second_tree);
 git_oid_fromstr(&id3, third_tree);
 git_oid_fromstr(&bid, blob_oid);


 cl_git_pass(git_treebuilder_new(&builder, g_repo, ((void*)0)));
 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "new.txt", &bid, GIT_FILEMODE_BLOB));
 cl_git_pass(git_treebuilder_write(&subtree_id, builder));
 git_treebuilder_free(builder);


 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));
 cl_git_pass(git_treebuilder_new(&builder, g_repo, tree));
 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "new", &subtree_id, GIT_FILEMODE_TREE));
 cl_git_pass(git_treebuilder_write(&id_hiearar, builder));
 git_treebuilder_free(builder);
 git_tree_free(tree);

 cl_assert(git_oid_cmp(&id_hiearar, &id3) == 0);


 cl_git_pass(git_tree_lookup(&tree, g_repo, &id_hiearar));
 cl_assert(2 == git_tree_entrycount(tree));
 git_tree_free(tree);
}
