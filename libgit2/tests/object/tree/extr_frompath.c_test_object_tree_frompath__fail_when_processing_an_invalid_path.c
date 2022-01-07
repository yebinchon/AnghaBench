
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;


 int cl_must_fail (int ) ;
 int git_tree_entry_bypath (int **,int ,char*) ;
 int tree ;

void test_object_tree_frompath__fail_when_processing_an_invalid_path(void)
{
 git_tree_entry *e;

 cl_must_fail(git_tree_entry_bypath(&e, tree, "/"));
 cl_must_fail(git_tree_entry_bypath(&e, tree, "/ab"));
 cl_must_fail(git_tree_entry_bypath(&e, tree, "/ab/de"));
 cl_must_fail(git_tree_entry_bypath(&e, tree, "ab//de"));
}
