
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {char const* start; char const* end; int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_8__ {int path; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_ITERATOR_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_iterator_advance (TYPE_2__ const**,int *) ;
 int git_iterator_current (TYPE_2__ const**,int *) ;
 int git_iterator_for_workdir (int **,int *,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;

__attribute__((used)) static void check_wd_first_through_third_range(
 git_repository *repo, const char *start, const char *end)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 const git_index_entry *entry;
 int error, idx;
 static const char *expected[] = { "FIRST", "second", "THIRD", ((void*)0) };

 i_opts.flags = GIT_ITERATOR_IGNORE_CASE;
 i_opts.start = start;
 i_opts.end = end;

 cl_git_pass(git_iterator_for_workdir(
  &i, repo, ((void*)0), ((void*)0), &i_opts));
 cl_git_pass(git_iterator_current(&entry, i));

 for (idx = 0; entry != ((void*)0); ++idx) {
  cl_assert_equal_s(expected[idx], entry->path);

  error = git_iterator_advance(&entry, i);
  cl_assert(!error || error == GIT_ITEROVER);
 }

 cl_assert(expected[idx] == ((void*)0));

 git_iterator_free(i);
}
