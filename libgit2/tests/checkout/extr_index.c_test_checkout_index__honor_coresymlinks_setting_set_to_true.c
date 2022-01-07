
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_PATH_MAX ;
 int check_file_contents (char*,char*) ;
 int cl_assert_equal_i (size_t,int ) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int cl_skip () ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int git_path_supports_symlinks (char*) ;
 size_t p_readlink (char*,char*,size_t) ;
 int strlen (char*) ;

void test_checkout_index__honor_coresymlinks_setting_set_to_true(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 char link_data[GIT_PATH_MAX];
 size_t link_size = GIT_PATH_MAX;

 if (!git_path_supports_symlinks("testrepo/test")) {
  cl_skip();
 }

 cl_repo_set_bool(g_repo, "core.symlinks", 1);

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 link_size = p_readlink("./testrepo/link_to_new.txt", link_data, link_size);
 link_data[link_size] = '\0';
 cl_assert_equal_i(link_size, strlen("new.txt"));
 cl_assert_equal_s(link_data, "new.txt");
 check_file_contents("./testrepo/link_to_new.txt", "my new file\n");
}
