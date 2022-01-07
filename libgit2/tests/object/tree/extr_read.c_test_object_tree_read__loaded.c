
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int * git_tree_entry_byindex (int *,unsigned int) ;
 int * git_tree_entry_byname (int *,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int tree_oid ;

void test_object_tree_read__loaded(void)
{

 git_oid id;
 git_tree *tree;

 git_oid_fromstr(&id, tree_oid);

 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));

 cl_assert(git_tree_entry_byname(tree, "README") != ((void*)0));
 cl_assert(git_tree_entry_byname(tree, "NOTEXISTS") == ((void*)0));
 cl_assert(git_tree_entry_byname(tree, "") == ((void*)0));
 cl_assert(git_tree_entry_byindex(tree, 0) != ((void*)0));
 cl_assert(git_tree_entry_byindex(tree, 2) != ((void*)0));
 cl_assert(git_tree_entry_byindex(tree, 3) == ((void*)0));
 cl_assert(git_tree_entry_byindex(tree, (unsigned int)-1) == ((void*)0));

 git_tree_free(tree);
}
