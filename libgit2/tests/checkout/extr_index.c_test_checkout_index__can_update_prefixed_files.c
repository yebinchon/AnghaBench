
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_REMOVE_UNTRACKED ;
 int GIT_CHECKOUT_SAFE ;
 int check_file_contents_nocr (char*,char*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int git_path_exists (char*) ;
 int git_path_isfile (char*) ;
 int p_mkdir (char*,int) ;

void test_checkout_index__can_update_prefixed_files(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_assert_equal_i(0, git_path_isfile("./testrepo/README"));
 cl_assert_equal_i(0, git_path_isfile("./testrepo/branch_file.txt"));
 cl_assert_equal_i(0, git_path_isfile("./testrepo/new.txt"));

 cl_git_mkfile("./testrepo/READ", "content\n");
 cl_git_mkfile("./testrepo/README.after", "content\n");
 cl_git_pass(p_mkdir("./testrepo/branch_file", 0777));
 cl_git_pass(p_mkdir("./testrepo/branch_file/contained_dir", 0777));
 cl_git_mkfile("./testrepo/branch_file/contained_file", "content\n");
 cl_git_pass(p_mkdir("./testrepo/branch_file.txt.after", 0777));

 opts.checkout_strategy =
  GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING |
  GIT_CHECKOUT_REMOVE_UNTRACKED;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));




 check_file_contents_nocr("./testrepo/README", "hey there\n");
 check_file_contents_nocr("./testrepo/branch_file.txt", "hi\nbye!\n");
 check_file_contents_nocr("./testrepo/new.txt", "my new file\n");

 cl_assert(!git_path_exists("testrepo/READ"));
 cl_assert(!git_path_exists("testrepo/README.after"));
 cl_assert(!git_path_exists("testrepo/branch_file"));
 cl_assert(!git_path_exists("testrepo/branch_file.txt.after"));
}
