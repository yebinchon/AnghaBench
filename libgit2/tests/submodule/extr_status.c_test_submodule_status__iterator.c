
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char const** member_1; int* member_2; int member_0; } ;
typedef TYPE_1__ submodule_expectations ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_2__ git_status_options ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_14__ {int path; } ;
typedef TYPE_4__ git_index_entry ;
typedef int git_index ;


 int GIT_ITERATOR_IGNORE_CASE ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;



 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNMODIFIED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;
 int GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int confirm_submodule_status ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_iterator_advance (TYPE_4__ const**,int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_status_foreach_ext (int ,TYPE_2__*,int ,TYPE_1__*) ;

void test_submodule_status__iterator(void)
{
 git_iterator *iter;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 const git_index_entry *entry;
 size_t i;
 static const char *expected[] = {
  ".gitmodules",
  "just_a_dir/",
  "just_a_dir/contents",
  "just_a_file",
  "not-submodule/",
  "not-submodule/README.txt",
  "not/",
  "not/README.txt",
  "README.txt",
  "sm_added_and_uncommited",
  "sm_changed_file",
  "sm_changed_head",
  "sm_changed_index",
  "sm_changed_untracked_file",
  "sm_missing_commits",
  "sm_unchanged",
  ((void*)0)
 };
 static int expected_flags[] = {
  131 | 129,
  -1,
  132,
  132,
  128,
  -1,
  128,
  -1,
  132,
  130,
  129,
  129,
  129,
  129,
  129,
  132,
  0
 };
 submodule_expectations exp = { 0, expected, expected_flags };
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 git_index *index;

 iter_opts.flags = GIT_ITERATOR_IGNORE_CASE | GIT_ITERATOR_INCLUDE_TREES;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_iterator_for_workdir(&iter, g_repo, index, ((void*)0), &iter_opts));

 for (i = 0; !git_iterator_advance(&entry, iter); ++i)
  cl_assert_equal_s(expected[i], entry->path);

 git_iterator_free(iter);
 git_index_free(index);

 opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_INCLUDE_UNMODIFIED |
  GIT_STATUS_OPT_INCLUDE_IGNORED |
  GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
  GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY;

 cl_git_pass(git_status_foreach_ext(
  g_repo, &opts, confirm_submodule_status, &exp));
}
