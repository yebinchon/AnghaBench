
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_TREE ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fail (scalar_t__) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 scalar_t__ git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int * git_tree_entry_byname (int *,char*) ;
 int git_tree_entry_name (int const*) ;
 int git_tree_entry_to_object (int **,int ,int const*) ;
 int git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int tree_oid ;

void test_object_tree_read__two(void)
{

 git_oid id;
 git_tree *tree;
 const git_tree_entry *entry;
 git_object *obj;

 git_oid_fromstr(&id, tree_oid);

 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));

 cl_assert(git_tree_entrycount(tree) == 3);


 cl_assert(git_object_lookup(&obj, g_repo, &id, GIT_OBJECT_TREE) == 0);
 cl_assert(obj != ((void*)0));
 git_object_free(obj);
 obj = ((void*)0);
 cl_git_fail(git_object_lookup(&obj, g_repo, &id, GIT_OBJECT_BLOB));
 cl_assert(obj == ((void*)0));

 entry = git_tree_entry_byname(tree, "README");
 cl_assert(entry != ((void*)0));

 cl_assert_equal_s(git_tree_entry_name(entry), "README");

 cl_git_pass(git_tree_entry_to_object(&obj, g_repo, entry));
 cl_assert(obj != ((void*)0));

 git_object_free(obj);
 git_tree_free(tree);
}
