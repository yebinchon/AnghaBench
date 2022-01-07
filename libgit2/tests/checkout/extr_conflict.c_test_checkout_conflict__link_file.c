
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int CONFLICTING_ANCESTOR_OID ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int LINK_ANCESTOR_OID ;
 int LINK_OURS_OID ;
 int LINK_THEIRS_OID ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_oid (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 int git_index_write (int ) ;

void test_checkout_conflict__link_file(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "link-1" },
  { 0100644, CONFLICTING_OURS_OID, 2, "link-1" },
  { 0120000, LINK_THEIRS_OID, 3, "link-1" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "link-2" },
  { 0120000, LINK_OURS_OID, 2, "link-2" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "link-2" },

  { 0120000, LINK_ANCESTOR_OID, 1, "link-3" },
  { 0100644, CONFLICTING_OURS_OID, 2, "link-3" },
  { 0120000, LINK_THEIRS_OID, 3, "link-3" },

  { 0120000, LINK_ANCESTOR_OID, 1, "link-4" },
  { 0120000, LINK_OURS_OID, 2, "link-4" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "link-4" },
 };

 opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

 create_index(checkout_index_entries, 12);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));


 ensure_workdir_oid("link-1", CONFLICTING_OURS_OID);
 ensure_workdir_oid("link-2", CONFLICTING_THEIRS_OID);
 ensure_workdir_oid("link-3", CONFLICTING_OURS_OID);
 ensure_workdir_oid("link-4", CONFLICTING_THEIRS_OID);
}
