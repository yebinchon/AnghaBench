
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int ) ;
 int test_inserting_submodule () ;
 int test_invalid_objects (int) ;

void test_object_tree_write__object_validity(void)
{

 test_invalid_objects(0);
 test_inserting_submodule();


 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));
 test_invalid_objects(1);
 test_inserting_submodule();
}
