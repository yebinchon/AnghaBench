
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_odb ;
 int git_odb_object_data (int *) ;
 int git_odb_object_free (int *) ;
 int git_odb_object_size (int *) ;
 int git_odb_read (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_odb_emptyobjects__read_tree_odb(void)
{
 git_oid id;
 git_odb_object *tree_odb;

 cl_git_pass(git_oid_fromstr(&id, "4b825dc642cb6eb9a060e54bf8d69288fbee4904"));
 cl_git_pass(git_odb_read(&tree_odb, g_odb, &id));
 cl_assert(git_odb_object_data(tree_odb));
 cl_assert_equal_s("", git_odb_object_data(tree_odb));
 cl_assert_equal_i(0, git_odb_object_size(tree_odb));
 git_odb_object_free(tree_odb);
}
