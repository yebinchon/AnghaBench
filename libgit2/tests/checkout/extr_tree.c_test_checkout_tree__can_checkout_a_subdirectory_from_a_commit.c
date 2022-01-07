
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** strings; int count; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_object ;
 TYPE_2__ g_opts ;
 int g_repo ;
 int git_checkout_tree (int ,int ,TYPE_2__*) ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_revparse_single (int *,int ,char*) ;

void test_checkout_tree__can_checkout_a_subdirectory_from_a_commit(void)
{
 char *entries[] = { "ab/de/" };

 g_opts.paths.strings = entries;
 g_opts.paths.count = 1;

 cl_git_pass(git_revparse_single(&g_object, g_repo, "subtrees"));

 cl_assert_equal_i(0, git_path_isdir("./testrepo/ab/"));

 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));

 cl_assert_equal_i(1, git_path_isfile("./testrepo/ab/de/2.txt"));
 cl_assert_equal_i(1, git_path_isfile("./testrepo/ab/de/fgh/1.txt"));
}
