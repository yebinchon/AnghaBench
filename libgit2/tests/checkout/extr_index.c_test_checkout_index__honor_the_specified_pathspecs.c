
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char** strings; int count; } ;
struct TYPE_6__ {int checkout_strategy; TYPE_1__ paths; } ;
typedef TYPE_2__ git_checkout_options ;


 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int check_file_contents (char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_2__*) ;
 int git_path_isfile (char*) ;

void test_checkout_index__honor_the_specified_pathspecs(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 char *entries[] = { "*.txt" };

 opts.paths.strings = entries;
 opts.paths.count = 1;

 cl_assert_equal_i(0, git_path_isfile("./testrepo/README"));
 cl_assert_equal_i(0, git_path_isfile("./testrepo/branch_file.txt"));
 cl_assert_equal_i(0, git_path_isfile("./testrepo/new.txt"));

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 cl_assert_equal_i(0, git_path_isfile("./testrepo/README"));
 check_file_contents("./testrepo/branch_file.txt", "hi\nbye!\n");
 check_file_contents("./testrepo/new.txt", "my new file\n");
}
