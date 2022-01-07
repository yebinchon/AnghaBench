
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_5__ {int count; char** strings; int member_0; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_6__ {TYPE_1__ paths; } ;
typedef TYPE_2__ git_checkout_options ;


 int AUTOMERGEABLE_ANCESTOR_OID ;
 int AUTOMERGEABLE_MERGED_FILE ;
 int AUTOMERGEABLE_OURS_OID ;
 int AUTOMERGEABLE_THEIRS_OID ;
 int CONFLICTING_ANCESTOR_OID ;
 int CONFLICTING_DIFF3_FILE ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_contents (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_2__*) ;
 int git_index_write (int ) ;
 int git_path_exists (char*) ;

void test_checkout_conflict__path_filters(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 char *paths[] = { "conflicting-1.txt", "conflicting-3.txt" };
 git_strarray patharray = {0};

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "conflicting-1.txt" },
  { 0100644, CONFLICTING_OURS_OID, 2, "conflicting-1.txt" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting-1.txt" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "conflicting-2.txt" },
  { 0100644, CONFLICTING_OURS_OID, 2, "conflicting-2.txt" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting-2.txt" },

  { 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "conflicting-3.txt" },
  { 0100644, AUTOMERGEABLE_OURS_OID, 2, "conflicting-3.txt" },
  { 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "conflicting-3.txt" },

  { 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "conflicting-4.txt" },
  { 0100644, AUTOMERGEABLE_OURS_OID, 2, "conflicting-4.txt" },
  { 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "conflicting-4.txt" },
 };

 patharray.count = 2;
 patharray.strings = paths;

 opts.paths = patharray;

 create_index(checkout_index_entries, 12);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));

 ensure_workdir_contents("conflicting-1.txt", CONFLICTING_DIFF3_FILE);
 cl_assert(!git_path_exists("merge-resolve/conflicting-2.txt"));
 ensure_workdir_contents("conflicting-3.txt", AUTOMERGEABLE_MERGED_FILE);
 cl_assert(!git_path_exists("merge-resolve/conflicting-4.txt"));
}
