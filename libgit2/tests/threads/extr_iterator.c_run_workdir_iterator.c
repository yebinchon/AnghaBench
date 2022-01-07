
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_8__ {scalar_t__ mode; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_ENOTFOUND ;
 scalar_t__ GIT_FILEMODE_TREE ;
 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int _repo ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_error_clear () ;
 int git_iterator_advance (TYPE_2__ const**,int *) ;
 int git_iterator_advance_into (TYPE_2__ const**,int *) ;
 int git_iterator_current_is_ignored (int *) ;
 int git_iterator_for_workdir (int **,int *,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int ) ;

__attribute__((used)) static void *run_workdir_iterator(void *arg)
{
 int error = 0;
 git_repository *repo;
 git_iterator *iter;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 const git_index_entry *entry = ((void*)0);

 iter_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

 cl_git_pass(git_repository_open(&repo, git_repository_path(_repo)));
 cl_git_pass(git_iterator_for_workdir(
  &iter, repo, ((void*)0), ((void*)0), &iter_opts));

 while (!error) {
  if (entry && entry->mode == GIT_FILEMODE_TREE) {
   error = git_iterator_advance_into(&entry, iter);

   if (error == GIT_ENOTFOUND)
    error = git_iterator_advance(&entry, iter);
  } else {
   error = git_iterator_advance(&entry, iter);
  }

  if (!error)
   (void)git_iterator_current_is_ignored(iter);
 }

 cl_assert_equal_i(GIT_ITEROVER, error);

 git_iterator_free(iter);
 git_repository_free(repo);
 git_error_clear();
 return arg;
}
