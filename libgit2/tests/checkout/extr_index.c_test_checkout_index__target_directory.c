
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int checkout_strategy; char* target_directory; TYPE_2__* notify_payload; int notify_cb; int notify_flags; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int cts ;
struct TYPE_7__ {int n_updates; int n_ignored; int n_untracked; } ;
typedef TYPE_2__ checkout_counts ;


 int GIT_CHECKOUT_NOTIFY_ALL ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_RMDIR_REMOVE_FILES ;
 int check_file_contents (char*,char*) ;
 int checkout_count_callback ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_path_isdir (char*) ;
 int memset (TYPE_2__*,int ,int) ;

void test_checkout_index__target_directory(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 checkout_counts cts;
 memset(&cts, 0, sizeof(cts));

 opts.checkout_strategy = GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING;
 opts.target_directory = "alternative";
 cl_assert(!git_path_isdir("alternative"));

 opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
 opts.notify_cb = checkout_count_callback;
 opts.notify_payload = &cts;


 cl_git_mkfile("testrepo/README", "I'm in the way!\n");
 cl_git_mkfile("testrepo/new.txt", "my new file\n");

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 cl_assert_equal_i(0, cts.n_untracked);
 cl_assert_equal_i(0, cts.n_ignored);
 cl_assert_equal_i(4, cts.n_updates);

 check_file_contents("./alternative/README", "hey there\n");
 check_file_contents("./alternative/branch_file.txt", "hi\nbye!\n");
 check_file_contents("./alternative/new.txt", "my new file\n");

 cl_git_pass(git_futils_rmdir_r(
  "alternative", ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
