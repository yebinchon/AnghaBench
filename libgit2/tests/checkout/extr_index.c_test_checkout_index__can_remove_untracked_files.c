
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
 int GIT_MKDIR_PATH ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_path_isdir (char*) ;

void test_checkout_index__can_remove_untracked_files(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 git_futils_mkdir("./testrepo/dir/subdir/subsubdir", 0755, GIT_MKDIR_PATH);
 cl_git_mkfile("./testrepo/dir/one", "one\n");
 cl_git_mkfile("./testrepo/dir/subdir/two", "two\n");

 cl_assert_equal_i(1, git_path_isdir("./testrepo/dir/subdir/subsubdir"));

 opts.checkout_strategy =
  GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING |
  GIT_CHECKOUT_REMOVE_UNTRACKED;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 cl_assert_equal_i(0, git_path_isdir("./testrepo/dir"));
}
