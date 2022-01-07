
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char const* start; char const* end; int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_9__ {int path; int mode; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 scalar_t__ S_ISDIR (int ) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char const*) ;
 int g_repo ;
 int git_iterator_advance (TYPE_2__ const**,int *) ;
 int git_iterator_advance_into (TYPE_2__ const**,int *) ;
 int git_iterator_current (TYPE_2__ const**,int *) ;
 int git_iterator_current_is_ignored (int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_iterator_reset (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void workdir_iterator_test(
 const char *sandbox,
 const char *start,
 const char *end,
 int expected_count,
 int expected_ignores,
 const char **expected_names,
 const char *an_ignored_name)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 const git_index_entry *entry;
 int error, count = 0, count_all = 0, count_all_post_reset = 0;

 g_repo = cl_git_sandbox_init(sandbox);

 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;
 i_opts.start = start;
 i_opts.end = end;

 cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));

 error = git_iterator_current(&entry, i);
 cl_assert((error == 0 && entry != ((void*)0)) ||
     (error == GIT_ITEROVER && entry == ((void*)0)));

 while (entry != ((void*)0)) {
  int ignored = git_iterator_current_is_ignored(i);

  if (S_ISDIR(entry->mode)) {
   cl_git_pass(git_iterator_advance_into(&entry, i));
   continue;
  }

  if (expected_names != ((void*)0))
   cl_assert_equal_s(expected_names[count_all], entry->path);

  if (an_ignored_name && strcmp(an_ignored_name,entry->path)==0)
   cl_assert(ignored);

  if (!ignored)
   count++;
  count_all++;

  error = git_iterator_advance(&entry, i);

  cl_assert((error == 0 && entry != ((void*)0)) ||
      (error == GIT_ITEROVER && entry == ((void*)0)));
 }

 cl_assert_equal_i(expected_count, count);
 cl_assert_equal_i(expected_count + expected_ignores, count_all);

 cl_git_pass(git_iterator_reset(i));

 error = git_iterator_current(&entry, i);
 cl_assert((error == 0 && entry != ((void*)0)) ||
     (error == GIT_ITEROVER && entry == ((void*)0)));

 while (entry != ((void*)0)) {
  if (S_ISDIR(entry->mode)) {
   cl_git_pass(git_iterator_advance_into(&entry, i));
   continue;
  }

  if (expected_names != ((void*)0))
   cl_assert_equal_s(
    expected_names[count_all_post_reset], entry->path);
  count_all_post_reset++;

  error = git_iterator_advance(&entry, i);
  cl_assert(error == 0 || error == GIT_ITEROVER);
 }

 cl_assert_equal_i(count_all, count_all_post_reset);

 git_iterator_free(i);
}
