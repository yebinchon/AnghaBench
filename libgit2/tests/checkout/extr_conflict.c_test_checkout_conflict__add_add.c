
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int CONFLICTING_DIFF3_FILE ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_contents (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 int git_index_write (int ) ;

void test_checkout_conflict__add_add(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, CONFLICTING_OURS_OID, 2, "conflicting.txt" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting.txt" },
 };

 opts.checkout_strategy |= GIT_CHECKOUT_SAFE;

 create_index(checkout_index_entries, 2);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));


 ensure_workdir_contents("conflicting.txt", CONFLICTING_DIFF3_FILE);
}
