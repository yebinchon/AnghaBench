
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int blob_oid ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int first_tree ;
 int g_repo ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int git_treebuilder_write (int *,int *) ;
 int second_tree ;

void test_object_tree_write__from_memory(void)
{

 git_treebuilder *builder;
 git_tree *tree;
 git_oid id, bid, rid, id2;

 git_oid_fromstr(&id, first_tree);
 git_oid_fromstr(&id2, second_tree);
 git_oid_fromstr(&bid, blob_oid);




 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));
 cl_git_pass(git_treebuilder_new(&builder, g_repo, tree));

 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "",
  &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "/",
  &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, ".git",
  &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "..",
  &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, ".",
  &bid, GIT_FILEMODE_BLOB));
 cl_git_fail(git_treebuilder_insert(((void*)0), builder, "folder/new.txt",
  &bid, GIT_FILEMODE_BLOB));

 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "new.txt", &bid, GIT_FILEMODE_BLOB));

 cl_git_pass(git_treebuilder_write(&rid, builder));

 cl_assert(git_oid_cmp(&rid, &id2) == 0);

 git_treebuilder_free(builder);
 git_tree_free(tree);
}
