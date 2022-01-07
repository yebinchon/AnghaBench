
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int path; int oid_str; int member_2; } ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_11__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_13__ {int path; int id; } ;
typedef TYPE_4__ git_index_entry ;
typedef int expected ;


 int GIT_ITERATOR_INCLUDE_HASH ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (TYPE_2__*,int *) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_iterator_advance (TYPE_4__ const**,int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_oid_fromstr (TYPE_2__*,int ) ;

void test_iterator_workdir__hash_when_requested(void)
{
 git_iterator *iter;
 const git_index_entry *entry;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_oid expected_id = {{0}};
 size_t i;

 struct merge_index_entry expected[] = {
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "7c7e08f9559d9e1551b91e1cf68f1d0066109add", 0, "oyster.txt" },
  { 0100644, "898d12687fb35be271c27c795a6b32c8b51da79e", 0, "veal.txt" },
 };

 g_repo = cl_git_sandbox_init("merge-recursive");


 cl_git_pass(git_iterator_for_workdir(&iter, g_repo, ((void*)0), ((void*)0), &iter_opts));

 for (i = 0; i < sizeof(expected) / sizeof(struct merge_index_entry); i++) {
  cl_git_pass(git_iterator_advance(&entry, iter));

  cl_assert_equal_oid(&expected_id, &entry->id);
  cl_assert_equal_s(expected[i].path, entry->path);
 }
 cl_assert_equal_i(GIT_ITEROVER, git_iterator_advance(&entry, iter));
 git_iterator_free(iter);


 iter_opts.flags |= GIT_ITERATOR_INCLUDE_HASH;
 cl_git_pass(git_iterator_for_workdir(&iter, g_repo, ((void*)0), ((void*)0), &iter_opts));

 for (i = 0; i < sizeof(expected) / sizeof(struct merge_index_entry); i++) {
  cl_git_pass(git_iterator_advance(&entry, iter));

  cl_git_pass(git_oid_fromstr(&expected_id, expected[i].oid_str));
  cl_assert_equal_oid(&expected_id, &entry->id);
  cl_assert_equal_s(expected[i].path, entry->path);
 }
 cl_assert_equal_i(GIT_ITEROVER, git_iterator_advance(&entry, iter));
 git_iterator_free(iter);
}
