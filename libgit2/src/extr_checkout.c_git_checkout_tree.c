
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_object ;
struct TYPE_9__ {int strings; int count; } ;
struct TYPE_11__ {TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;
struct TYPE_10__ {int strings; int count; } ;
struct TYPE_12__ {int checkout_strategy; TYPE_2__ paths; } ;
typedef TYPE_4__ git_checkout_options ;


 int GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH ;
 int GIT_ERROR_CHECKOUT ;
 int GIT_EUNBORNBRANCH ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_OBJECT_TREE ;
 int checkout_lookup_head_tree (int **,int *) ;
 int git_checkout_iterator (int *,int *,TYPE_4__ const*) ;
 int git_error_set (int ,char*) ;
 int git_index_free (int *) ;
 int git_iterator_for_tree (int **,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int * git_object_owner (int const*) ;
 scalar_t__ git_object_peel (int **,int const*,int ) ;
 int git_repository_index (int **,int *) ;
 int git_tree_free (int *) ;

int git_checkout_tree(
 git_repository *repo,
 const git_object *treeish,
 const git_checkout_options *opts)
{
 int error;
 git_index *index;
 git_tree *tree = ((void*)0);
 git_iterator *tree_i = ((void*)0);
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;

 if (!treeish && !repo) {
  git_error_set(GIT_ERROR_CHECKOUT,
   "must provide either repository or tree to checkout");
  return -1;
 }
 if (treeish && repo && git_object_owner(treeish) != repo) {
  git_error_set(GIT_ERROR_CHECKOUT,
   "object to checkout does not match repository");
  return -1;
 }

 if (!repo)
  repo = git_object_owner(treeish);

 if (treeish) {
  if (git_object_peel((git_object **)&tree, treeish, GIT_OBJECT_TREE) < 0) {
   git_error_set(
    GIT_ERROR_CHECKOUT, "provided object cannot be peeled to a tree");
   return -1;
  }
 }
 else {
  if ((error = checkout_lookup_head_tree(&tree, repo)) < 0) {
   if (error != GIT_EUNBORNBRANCH)
    git_error_set(
     GIT_ERROR_CHECKOUT,
     "HEAD could not be peeled to a tree and no treeish given");
   return error;
  }
 }

 if ((error = git_repository_index(&index, repo)) < 0)
  return error;

 if (opts && (opts->checkout_strategy & GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH)) {
  iter_opts.pathlist.count = opts->paths.count;
  iter_opts.pathlist.strings = opts->paths.strings;
 }

 if (!(error = git_iterator_for_tree(&tree_i, tree, &iter_opts)))
  error = git_checkout_iterator(tree_i, index, opts);

 git_iterator_free(tree_i);
 git_index_free(index);
 git_tree_free(tree);

 return error;
}
