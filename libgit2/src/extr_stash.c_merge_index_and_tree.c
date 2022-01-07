
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int git_iterator_for_index (int **,int *,int *,TYPE_1__*) ;
 int git_iterator_for_tree (int **,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_merge__iterators (int **,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int merge_index_and_tree(
 git_index **out,
 git_repository *repo,
 git_tree *ancestor_tree,
 git_index *ours_index,
 git_tree *theirs_tree)
{
 git_iterator *ancestor = ((void*)0), *ours = ((void*)0), *theirs = ((void*)0);
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 int error;

 iter_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

 if ((error = git_iterator_for_tree(&ancestor, ancestor_tree, &iter_opts)) < 0 ||
  (error = git_iterator_for_index(&ours, repo, ours_index, &iter_opts)) < 0 ||
  (error = git_iterator_for_tree(&theirs, theirs_tree, &iter_opts)) < 0)
  goto done;

 error = git_merge__iterators(out, repo, ancestor, ours, theirs, ((void*)0));

done:
 git_iterator_free(ancestor);
 git_iterator_free(ours);
 git_iterator_free(theirs);
 return error;
}
