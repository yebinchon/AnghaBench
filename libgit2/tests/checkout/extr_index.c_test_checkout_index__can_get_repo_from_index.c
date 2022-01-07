
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int check_file_contents (char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int *,int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_path_isfile (char*) ;
 int git_repository_index (int **,int ) ;

void test_checkout_index__can_get_repo_from_index(void)
{
 git_index *index;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_assert_equal_i(0, git_path_isfile("./testrepo/README"));
 cl_assert_equal_i(0, git_path_isfile("./testrepo/branch_file.txt"));
 cl_assert_equal_i(0, git_path_isfile("./testrepo/new.txt"));

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_pass(git_checkout_index(((void*)0), index, &opts));

 check_file_contents("./testrepo/README", "hey there\n");
 check_file_contents("./testrepo/branch_file.txt", "hi\nbye!\n");
 check_file_contents("./testrepo/new.txt", "my new file\n");

 git_index_free(index);
}
