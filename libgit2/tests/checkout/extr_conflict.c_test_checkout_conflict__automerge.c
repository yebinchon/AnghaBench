
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
typedef int git_checkout_options ;


 int AUTOMERGEABLE_ANCESTOR_OID ;
 int AUTOMERGEABLE_MERGED_FILE ;
 int AUTOMERGEABLE_OURS_OID ;
 int AUTOMERGEABLE_THEIRS_OID ;
 int GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir_contents (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,int *) ;
 int git_index_write (int ) ;

void test_checkout_conflict__automerge(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "automergeable.txt" },
  { 0100644, AUTOMERGEABLE_OURS_OID, 2, "automergeable.txt" },
  { 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "automergeable.txt" },
 };

 create_index(checkout_index_entries, 3);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));

 ensure_workdir_contents("automergeable.txt", AUTOMERGEABLE_MERGED_FILE);
}
