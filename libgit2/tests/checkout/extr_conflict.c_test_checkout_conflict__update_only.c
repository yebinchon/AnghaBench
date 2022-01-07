
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int AUTOMERGEABLE_ANCESTOR_OID ;
 int AUTOMERGEABLE_MERGED_FILE ;
 int AUTOMERGEABLE_OURS_OID ;
 int AUTOMERGEABLE_THEIRS_OID ;
 int CONFLICTING_ANCESTOR_OID ;
 int CONFLICTING_OURS_FILE ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_UPDATE_ONLY ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int ensure_workdir (char*,int,int ) ;
 int ensure_workdir_contents (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 int git_index_write (int ) ;
 int git_path_exists (char*) ;
 int p_mkdir (char*,int) ;

void test_checkout_conflict__update_only(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, AUTOMERGEABLE_ANCESTOR_OID, 1, "automergeable.txt" },
  { 0100644, AUTOMERGEABLE_OURS_OID, 2, "automergeable.txt" },
  { 0100644, AUTOMERGEABLE_THEIRS_OID, 3, "automergeable.txt" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "modify-delete" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "modify-delete" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "directory_file-one" },
  { 0100644, CONFLICTING_OURS_OID, 2, "directory_file-one" },
  { 0100644, CONFLICTING_THEIRS_OID, 0, "directory_file-one/file" },

  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "directory_file-two" },
  { 0100644, CONFLICTING_OURS_OID, 0, "directory_file-two/file" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "directory_file-two" },
 };

 opts.checkout_strategy |= GIT_CHECKOUT_UPDATE_ONLY;

 create_index(checkout_index_entries, 3);
 cl_git_pass(git_index_write(g_index));

 cl_git_pass(p_mkdir("merge-resolve/directory_file-two", 0777));
 cl_git_rewritefile("merge-resolve/directory_file-two/file", CONFLICTING_OURS_FILE);

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));

 ensure_workdir_contents("automergeable.txt", AUTOMERGEABLE_MERGED_FILE);
 ensure_workdir("directory_file-two/file", 0100644, CONFLICTING_OURS_OID);

 cl_assert(!git_path_exists("merge-resolve/modify-delete"));
 cl_assert(!git_path_exists("merge-resolve/test-one.txt"));
 cl_assert(!git_path_exists("merge-resolve/test-one-side-one.txt"));
 cl_assert(!git_path_exists("merge-resolve/test-one-side-two.txt"));
 cl_assert(!git_path_exists("merge-resolve/test-one.txt~ours"));
 cl_assert(!git_path_exists("merge-resolve/test-one.txt~theirs"));
 cl_assert(!git_path_exists("merge-resolve/directory_file-one/file"));
 cl_assert(!git_path_exists("merge-resolve/directory_file-one~ours"));
 cl_assert(!git_path_exists("merge-resolve/directory_file-two~theirs"));
}
