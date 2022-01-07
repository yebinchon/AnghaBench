
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_4__ {char* our_label; char* their_label; int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int CONFLICTING_ANCESTOR_OID ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_oid (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 int git_index_write (int ) ;

void test_checkout_conflict__directory_file_with_custom_labels(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-1" },
  { 0100644, CONFLICTING_OURS_OID, 2, "df-1" },
  { 0100644, CONFLICTING_THEIRS_OID, 0, "df-1/file" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-2" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "df-2" },
  { 0100644, CONFLICTING_OURS_OID, 0, "df-2/file" },

  { 0100644, CONFLICTING_THEIRS_OID, 3, "df-3" },
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-3/file" },
  { 0100644, CONFLICTING_OURS_OID, 2, "df-3/file" },

  { 0100644, CONFLICTING_OURS_OID, 2, "df-4" },
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "df-4/file" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "df-4/file" },
 };

 opts.checkout_strategy |= GIT_CHECKOUT_SAFE;
 opts.our_label = "HEAD";
 opts.their_label = "branch";

 create_index(checkout_index_entries, 12);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));

 ensure_workdir_oid("df-1/file", CONFLICTING_THEIRS_OID);
 ensure_workdir_oid("df-1~HEAD", CONFLICTING_OURS_OID);
 ensure_workdir_oid("df-2/file", CONFLICTING_OURS_OID);
 ensure_workdir_oid("df-2~branch", CONFLICTING_THEIRS_OID);
 ensure_workdir_oid("df-3/file", CONFLICTING_OURS_OID);
 ensure_workdir_oid("df-3~branch", CONFLICTING_THEIRS_OID);
 ensure_workdir_oid("df-4~HEAD", CONFLICTING_OURS_OID);
 ensure_workdir_oid("df-4/file", CONFLICTING_THEIRS_OID);
}
