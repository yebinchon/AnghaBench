
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_iterator_options ;
typedef int git_iterator_flag_t ;
typedef int git_iterator ;
struct TYPE_5__ {int ignore_case; } ;
typedef TYPE_1__ git_index ;
typedef int git_diff_options ;
typedef int git_diff ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 int GIT_ITERATOR_INCLUDE_CONFLICTS ;
 int GIT_ITERATOR_OPTIONS_INIT ;
 int assert (int) ;
 int diff_load_index (TYPE_1__**,int *) ;
 int diff_prepare_iterator_opts (char**,int *,int,int *,int,int const*) ;
 int git__free (char*) ;
 int git_diff__from_iterators (int **,int *,int *,int *,int const*) ;
 int git_diff__set_ignore_case (int *,int) ;
 int git_diff_free (int *) ;
 int git_iterator_for_index (int **,int *,TYPE_1__*,int *) ;
 int git_iterator_for_tree (int **,int *,int *) ;
 int git_iterator_free (int *) ;

int git_diff_tree_to_index(
 git_diff **out,
 git_repository *repo,
 git_tree *old_tree,
 git_index *index,
 const git_diff_options *opts)
{
 git_iterator_flag_t iflag = GIT_ITERATOR_DONT_IGNORE_CASE |
  GIT_ITERATOR_INCLUDE_CONFLICTS;
 git_iterator_options a_opts = GIT_ITERATOR_OPTIONS_INIT,
  b_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_iterator *a = ((void*)0), *b = ((void*)0);
 git_diff *diff = ((void*)0);
 char *prefix = ((void*)0);
 bool index_ignore_case = 0;
 int error = 0;

 assert(out && repo);

 *out = ((void*)0);

 if (!index && (error = diff_load_index(&index, repo)) < 0)
  return error;

 index_ignore_case = index->ignore_case;

 if ((error = diff_prepare_iterator_opts(&prefix, &a_opts, iflag, &b_opts, iflag, opts)) < 0 ||
     (error = git_iterator_for_tree(&a, old_tree, &a_opts)) < 0 ||
     (error = git_iterator_for_index(&b, repo, index, &b_opts)) < 0 ||
     (error = git_diff__from_iterators(&diff, repo, a, b, opts)) < 0)
  goto out;


 if (index_ignore_case)
  git_diff__set_ignore_case(diff, 1);

 *out = diff;
 diff = ((void*)0);
out:
 git_iterator_free(a);
 git_iterator_free(b);
 git_diff_free(diff);
 git__free(prefix);

 return error;
}
