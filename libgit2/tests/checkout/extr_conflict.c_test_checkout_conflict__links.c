
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int LINK_ANCESTOR_OID ;
 int LINK_OURS_OID ;
 int LINK_OURS_TARGET ;
 int LINK_THEIRS_OID ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_link (int ,char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 int git_index_write (int ) ;

void test_checkout_conflict__links(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0120000, LINK_ANCESTOR_OID, 1, "link-1" },
  { 0120000, LINK_OURS_OID, 2, "link-1" },
  { 0120000, LINK_THEIRS_OID, 3, "link-1" },

  { 0120000, LINK_OURS_OID, 2, "link-2" },
  { 0120000, LINK_THEIRS_OID, 3, "link-2" },
 };

 opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

 create_index(checkout_index_entries, 5);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));


 ensure_workdir_link(g_repo, "link-1", LINK_OURS_TARGET);
 ensure_workdir_link(g_repo, "link-2", LINK_OURS_TARGET);
}
