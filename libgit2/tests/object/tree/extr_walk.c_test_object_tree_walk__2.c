
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treewalk_skip_data {char* skip; char* stop; int dirs; int files; } ;
typedef int git_tree ;
typedef int git_oid ;
typedef int data ;


 int GIT_TREEWALK_PRE ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int git_tree_walk (int *,int ,int ,struct treewalk_skip_data*) ;
 int memset (struct treewalk_skip_data*,int ,int) ;
 int treewalk_skip_de_cb ;

void test_object_tree_walk__2(void)
{
 git_oid id;
 git_tree *tree;
 struct treewalk_skip_data data;


 git_oid_fromstr(&id, "ae90f12eea699729ed24555e40b9fd669da12a12");
 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));

 memset(&data, 0, sizeof(data));
 data.skip = "de";

 cl_assert_equal_i(0, git_tree_walk(
  tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
 cl_assert_equal_i(5, data.files);
 cl_assert_equal_i(3, data.dirs);

 memset(&data, 0, sizeof(data));
 data.stop = "3.txt";

 cl_assert_equal_i(-1, git_tree_walk(
  tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
 cl_assert_equal_i(3, data.files);
 cl_assert_equal_i(2, data.dirs);

 memset(&data, 0, sizeof(data));
 data.skip = "new.txt";

 cl_assert_equal_i(0, git_tree_walk(
  tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
 cl_assert_equal_i(7, data.files);
 cl_assert_equal_i(4, data.dirs);

 memset(&data, 0, sizeof(data));
 data.stop = "new.txt";

 cl_assert_equal_i(-1, git_tree_walk(
  tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
 cl_assert_equal_i(7, data.files);
 cl_assert_equal_i(4, data.dirs);

 git_tree_free(tree);
}
