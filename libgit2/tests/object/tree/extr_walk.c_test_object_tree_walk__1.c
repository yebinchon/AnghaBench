
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_oid ;


 int GIT_TREEWALK_POST ;
 int GIT_TREEWALK_PRE ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int git_tree_walk (int *,int ,int ,int*) ;
 int tree_oid ;
 int treewalk_stop_cb ;
 int treewalk_stop_immediately_cb ;

void test_object_tree_walk__1(void)
{
 git_oid id;
 git_tree *tree;
 int ct;

 git_oid_fromstr(&id, tree_oid);

 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));

 ct = 0;
 cl_assert_equal_i(
  -123, git_tree_walk(tree, GIT_TREEWALK_PRE, treewalk_stop_cb, &ct));
 cl_assert_equal_i(2, ct);

 ct = 0;
 cl_assert_equal_i(
  -123, git_tree_walk(tree, GIT_TREEWALK_POST, treewalk_stop_cb, &ct));
 cl_assert_equal_i(2, ct);

 cl_assert_equal_i(
  -100, git_tree_walk(
   tree, GIT_TREEWALK_PRE, treewalk_stop_immediately_cb, ((void*)0)));

 cl_assert_equal_i(
  -100, git_tree_walk(
   tree, GIT_TREEWALK_POST, treewalk_stop_immediately_cb, ((void*)0)));

 git_tree_free(tree);
}
