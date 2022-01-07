
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
typedef int git_pathspec_match_list ;
typedef int git_pathspec ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int assert (int *) ;
 int git_iterator_for_workdir (int **,int *,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int pathspec_match_from_iterator (int **,int *,int ,int *) ;
 int pathspec_match_iter_flags (int ) ;

int git_pathspec_match_workdir(
 git_pathspec_match_list **out,
 git_repository *repo,
 uint32_t flags,
 git_pathspec *ps)
{
 git_iterator *iter;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 int error = 0;

 assert(repo);

 iter_opts.flags = pathspec_match_iter_flags(flags);

 if (!(error = git_iterator_for_workdir(&iter, repo, ((void*)0), ((void*)0), &iter_opts))) {
  error = pathspec_match_from_iterator(out, iter, flags, ps);
  git_iterator_free(iter);
 }

 return error;
}
