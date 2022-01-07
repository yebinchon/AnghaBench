
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_merge_options ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_2__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_MERGE_SKIP_REUC ;
 int assert (int) ;
 int git_index_new (int **) ;
 int git_index_read_tree (int *,int const*) ;
 int git_iterator_for_tree (int **,int *,TYPE_2__*) ;
 int git_iterator_free (int *) ;
 int git_merge__iterators (int **,int *,int *,int *,int *,TYPE_1__ const*) ;
 int git_oid_cmp (int const*,int *) ;
 int * git_tree_id (int const*) ;

int git_merge_trees(
 git_index **out,
 git_repository *repo,
 const git_tree *ancestor_tree,
 const git_tree *our_tree,
 const git_tree *their_tree,
 const git_merge_options *merge_opts)
{
 git_iterator *ancestor_iter = ((void*)0), *our_iter = ((void*)0), *their_iter = ((void*)0);
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 int error;

 assert(out && repo);


 if (ancestor_tree && merge_opts && (merge_opts->flags & GIT_MERGE_SKIP_REUC)) {
  const git_tree *result = ((void*)0);
  const git_oid *ancestor_tree_id = git_tree_id(ancestor_tree);

  if (our_tree && !git_oid_cmp(ancestor_tree_id, git_tree_id(our_tree)))
   result = their_tree;
  else if (their_tree && !git_oid_cmp(ancestor_tree_id, git_tree_id(their_tree)))
   result = our_tree;

  if (result) {
   if ((error = git_index_new(out)) == 0)
       error = git_index_read_tree(*out, result);

   return error;
  }
 }

 iter_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

 if ((error = git_iterator_for_tree(
   &ancestor_iter, (git_tree *)ancestor_tree, &iter_opts)) < 0 ||
  (error = git_iterator_for_tree(
   &our_iter, (git_tree *)our_tree, &iter_opts)) < 0 ||
  (error = git_iterator_for_tree(
   &their_iter, (git_tree *)their_tree, &iter_opts)) < 0)
  goto done;

 error = git_merge__iterators(
  out, repo, ancestor_iter, our_iter, their_iter, merge_opts);

done:
 git_iterator_free(ancestor_iter);
 git_iterator_free(our_iter);
 git_iterator_free(their_iter);

 return error;
}
