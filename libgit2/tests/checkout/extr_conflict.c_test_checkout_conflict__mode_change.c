
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int CONFLICTING_ANCESTOR_OID ;
 int CONFLICTING_DIFF3_FILE ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_contents (char*,int ) ;
 int ensure_workdir_mode (char*,int) ;
 int ensure_workdir_oid (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 int git_index_write (int ) ;

void test_checkout_conflict__mode_change(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "executable-1" },
  { 0100755, CONFLICTING_ANCESTOR_OID, 2, "executable-1" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "executable-1" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "executable-2" },
  { 0100644, CONFLICTING_OURS_OID, 2, "executable-2" },
  { 0100755, CONFLICTING_ANCESTOR_OID, 3, "executable-2" },

  { 0100755, CONFLICTING_ANCESTOR_OID, 1, "executable-3" },
  { 0100644, CONFLICTING_ANCESTOR_OID, 2, "executable-3" },
  { 0100755, CONFLICTING_THEIRS_OID, 3, "executable-3" },

  { 0100755, CONFLICTING_ANCESTOR_OID, 1, "executable-4" },
  { 0100755, CONFLICTING_OURS_OID, 2, "executable-4" },
  { 0100644, CONFLICTING_ANCESTOR_OID, 3, "executable-4" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "executable-5" },
  { 0100755, CONFLICTING_OURS_OID, 2, "executable-5" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "executable-5" },

  { 0100755, CONFLICTING_ANCESTOR_OID, 1, "executable-6" },
  { 0100644, CONFLICTING_OURS_OID, 2, "executable-6" },
  { 0100755, CONFLICTING_THEIRS_OID, 3, "executable-6" },
 };

 opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

 create_index(checkout_index_entries, 18);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));


 ensure_workdir_oid("executable-1", CONFLICTING_THEIRS_OID);
 ensure_workdir_mode("executable-1", 0100755);

 ensure_workdir_oid("executable-2", CONFLICTING_OURS_OID);
 ensure_workdir_mode("executable-2", 0100755);

 ensure_workdir_oid("executable-3", CONFLICTING_THEIRS_OID);
 ensure_workdir_mode("executable-3", 0100644);

 ensure_workdir_oid("executable-4", CONFLICTING_OURS_OID);
 ensure_workdir_mode("executable-4", 0100644);

 ensure_workdir_contents("executable-5", CONFLICTING_DIFF3_FILE);
 ensure_workdir_mode("executable-5", 0100755);

 ensure_workdir_contents("executable-6", CONFLICTING_DIFF3_FILE);
 ensure_workdir_mode("executable-6", 0100644);
}
