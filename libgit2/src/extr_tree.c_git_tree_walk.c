
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_treewalk_mode ;
typedef int git_treewalk_cb ;
typedef int git_tree ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_INVALID ;
 scalar_t__ GIT_TREEWALK_POST ;
 scalar_t__ GIT_TREEWALK_PRE ;
 int git_buf_dispose (int *) ;
 int git_error_set (int ,char*) ;
 int tree_walk (int const*,int ,int *,void*,int) ;

int git_tree_walk(
 const git_tree *tree,
 git_treewalk_mode mode,
 git_treewalk_cb callback,
 void *payload)
{
 int error = 0;
 git_buf root_path = GIT_BUF_INIT;

 if (mode != GIT_TREEWALK_POST && mode != GIT_TREEWALK_PRE) {
  git_error_set(GIT_ERROR_INVALID, "invalid walking mode for tree walk");
  return -1;
 }

 error = tree_walk(
  tree, callback, &root_path, payload, (mode == GIT_TREEWALK_PRE));

 git_buf_dispose(&root_path);

 return error;
}
