
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {int checkout_strategy; char* target_directory; TYPE_2__* notify_payload; int notify_cb; int notify_flags; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int cts ;
struct TYPE_7__ {int n_updates; int n_ignored; int n_untracked; } ;
typedef TYPE_2__ checkout_counts ;


 int GIT_CHECKOUT_NOTIFY_ALL ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_OBJECT_ANY ;
 int GIT_RMDIR_REMOVE_FILES ;
 int check_file_contents_nocr (char*,char*) ;
 int checkout_count_callback ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_object ;
 int g_repo ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_object_lookup (int *,int ,int *,int ) ;
 int git_path_isdir (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_is_bare (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int test_checkout_tree__cleanup () ;

void test_checkout_tree__target_directory_from_bare(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 checkout_counts cts;
 memset(&cts, 0, sizeof(cts));

 test_checkout_tree__cleanup();

 g_repo = cl_git_sandbox_init("testrepo.git");
 cl_assert(git_repository_is_bare(g_repo));

 opts.checkout_strategy = GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING;

 opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
 opts.notify_cb = checkout_count_callback;
 opts.notify_payload = &cts;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "HEAD"));
 cl_git_pass(git_object_lookup(&g_object, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_fail(git_checkout_tree(g_repo, g_object, &opts));

 opts.target_directory = "alternative";
 cl_assert(!git_path_isdir("alternative"));

 cl_git_pass(git_checkout_tree(g_repo, g_object, &opts));

 cl_assert_equal_i(0, cts.n_untracked);
 cl_assert_equal_i(0, cts.n_ignored);
 cl_assert_equal_i(3, cts.n_updates);

 check_file_contents_nocr("./alternative/README", "hey there\n");
 check_file_contents_nocr("./alternative/branch_file.txt", "hi\nbye!\n");
 check_file_contents_nocr("./alternative/new.txt", "my new file\n");

 cl_git_pass(git_futils_rmdir_r(
  "alternative", ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
