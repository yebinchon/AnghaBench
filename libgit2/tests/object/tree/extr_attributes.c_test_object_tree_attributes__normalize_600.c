
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int * git_tree_entry_byname (int *,char*) ;
 int git_tree_entry_filemode (int const*) ;
 int git_tree_entry_filemode_raw (int const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int repo ;

void test_object_tree_attributes__normalize_600(void)
{
 git_oid id;
 git_tree *tree;
 const git_tree_entry *entry;

 git_oid_fromstr(&id, "0810fb7818088ff5ac41ee49199b51473b1bd6c7");
 cl_git_pass(git_tree_lookup(&tree, repo, &id));

 entry = git_tree_entry_byname(tree, "ListaTeste.xml");
 cl_assert_equal_i(git_tree_entry_filemode(entry), GIT_FILEMODE_BLOB);
 cl_assert_equal_i(git_tree_entry_filemode_raw(entry), 0100600);

 git_tree_free(tree);
}
