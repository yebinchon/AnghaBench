
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_pathspec_match_list ;
typedef int git_pathspec ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int assert (int *) ;
 int git_index_owner (int *) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int pathspec_match_from_iterator (int **,int *,int ,int *) ;
 int pathspec_match_iter_flags (int ) ;

int git_pathspec_match_index(
 git_pathspec_match_list **out,
 git_index *index,
 uint32_t flags,
 git_pathspec *ps)
{
 git_iterator *iter;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 int error = 0;

 assert(index);

 iter_opts.flags = pathspec_match_iter_flags(flags);

 if (!(error = git_iterator_for_index(&iter, git_index_owner(index), index, &iter_opts))) {
  error = pathspec_match_from_iterator(out, iter, flags, ps);
  git_iterator_free(iter);
 }

 return error;
}
